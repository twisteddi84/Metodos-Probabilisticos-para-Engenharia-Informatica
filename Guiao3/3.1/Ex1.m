%------a--------
X0 = [0;1]; %[Faltar,Ir]
T = [0.2,0.3;
     0.8,0.7];
X1 = T*X0;
X2 = T*X1;%T*T*X0
Probabilidade_de_presente_ir1 = X2(2,1)*100

%-------b--------

X0 = [1;0]; %[Faltar,Ir]
T = [0.2,0.3;0.8,0.7];
X1 = T*X0;
X2 = T*X1;%T*T*X0
Probabilidade_de_presente_faltar1 = X2(2,1)*100;

%------c---------

X0 = [0;1]; %[Faltar,Ir]
T = [0.2,0.3;0.8,0.7];
X15=(T^15)*X0;
Probabilidade_de_presente_ir_15 = X15(2,1)*100;

%------d-------

X0 = [0.85;0.15];
T = [0.7,0.8;0.3,0.2];
Probabilidade_ir = zeros(1,30);

for aula = 1:30
    X_aula = T^aula * X0
    probabilidade_ir(1,aula) = X_aula(2,1);
end

plot(1:30,probabilidade_ir)
