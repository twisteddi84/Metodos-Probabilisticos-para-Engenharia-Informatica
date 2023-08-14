lambda = 15;
k = 0;
pk = ((lambda^k)/factorial(k))*exp(-lambda);

%--------b--------

lambda = 15;
for k=0:10
    pk = pk + ((lambda^k)/factorial(k))*exp(-lambda);
end
Prob_10_mais = 1 - pk;