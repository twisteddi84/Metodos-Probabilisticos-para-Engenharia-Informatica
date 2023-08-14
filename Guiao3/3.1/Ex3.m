T = rand(20);
S = sum(T);
T = T./S;

X0=zeros(20,1);
X0(1,1) = 1;

X2 = (T^2)*X0;
Probabilidade_Estar_20_2_transicoes = X2(20,1)

X5 = (T^5)*X0;
Probabilidade_Estar_20_5_transicoes = X5(20,1)

X10 = (T^10)*X0;
Probabilidade_Estar_20_10_transicoes = X10(20,1)

X100 = (T^100)*X0;
Probabilidade_Estar_20_100_transicoes = X100(20,1)