N= 1e5; %n ́umero de experiˆencias
p = 0.5; %probabilidade de rapaz
k = 1; %n ́umero de rapazes
n = 2; %n ́umero de filhos
familia = rand(n,N) > p;

pelo_menos_um_rapaz= sum(familia)>=k;
n_rapazes = sum(familia,1);

primeiro_rapaz = familia(1,:);

A = n_rapazes ==2;
B = primeiro_rapaz;

AB= A & B;
P_AB= sum(AB)/N;
P_A_dado_B=P_AB / (sum(B)/N)*100