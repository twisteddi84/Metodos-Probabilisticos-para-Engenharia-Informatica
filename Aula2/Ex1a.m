N= 1e5; %n ́umero de experiˆencias
p = 0.5; %probabilidade de rapaz
k = 1; %n ́umero de rapazes
n = 2; %n ́umero de filhos
familia = rand(n,N) > p;
n_rapazes= sum(familia)>=k;
probSimulacao= sum(n_rapazes)/N * 100