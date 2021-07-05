clc
clear all
close all
%% PART 1
disp("Normally distributed");
A = randn(1 , 1000000);
%disp(A);
disp("Uniformly distributed");
B = rand(1 , 1000000);
%disp(B);

figure(1);
histogram(A,'Normalization','probability');
title("Normally distributed Probability density");

figure(2);
histogram(B,'Normalization','probability');
title("Uniformly distributed Probability density");

%% PART 2
% calculating mean and variance of normally distributed
sum1 = 0;
for f=1:1000000
    sum1=sum1+A(f);
end
M=sum1/1000000;
sum2=0;
for f=1:100
    sum2=sum2+(A(f)-M)^2;
end
fprintf("Mean -normally distributed:%d\n",M); % mean

V=sum2/1000000;
fprintf("Varaince-normally distributed:%d\n",V); %variance

% calculating mean and variance for uniformally distributed
pro1 = 0;
for f=1:1000000
    pro1=pro1+A(f);
end
Expt=pro1/1000000;
pro2=0;
for f=1:1000000
    pro2=pro2+(A(f)-Expt)^2;
end
fprintf("Mean -uniformaly distributed:%d\n",Expt); % mean
Var=pro2/1000000;
fprintf("Varaince-normally distributed:%d\n",Var); %variance
%% PART 3
U = cdf('unif', B , 0,1);
%disp(U);
X = -(1/M)*(log(1-U));
figure(3);
histogram(X ,'Normalization','cdf');
title("Cumulative Density Function of X");
ylabel("cdf of X");
xlabel("X values");

figure(4);
histogram(X ,'Normalization','pdf'); 
title("Probability Density Function of X");
ylabel("pdf of X");
xlabel("X values"); 
