%-----a------
T = [0.7,0.2,0.3;
     0.2,0.3,0.3;
     0.1,0.5,0.4];

%-----b------

X0 = [1;
      0;
      0]; %Sol,Nuvens,Chuva
X2 = (T^1)*X0;
Probabilidade_sol_2_dia = X2(1,1);
X3 = (T^2)*X0;
Probabilidade_sol_3_dia = X3(1,1);

Probabilidade_sol_2e3_dia = 0.7^2

%-----c-------

Probabilidade_nao_chuva_2_dia = 1 - X2(3,1);


Probabilidade_nao_chuva_3_dia = 1 - X3(3,1);

Probabilidade_nao_chuva_2e3_dia = 0.7*0.7 + 0.7*0.2 + 0.2*0.3 + 0.2*0.2 


%------d-------
Numero_medio_dias_sol = 1;
Numero_medio_dias_nuvens = 0;
Numero_medio_dias_chuva = 0;
for k = 1:30
    Xk = (T^k)*X0;
    Numero_medio_dias_sol = Numero_medio_dias_sol + Xk(1,1);
    Numero_medio_dias_nuvens = Numero_medio_dias_nuvens + Xk(2,1);
    Numero_medio_dias_chuva = Numero_medio_dias_chuva + Xk(3,1);

end
Numero_medio_dias_sol;
Numero_medio_dias_nuvens;
Numero_medio_dias_chuva;

%-------e-------
X0 = [0;0;1];
Numero_medio_dias_sol = 0;
Numero_medio_dias_nuvens = 0;
Numero_medio_dias_chuva = 1;
for k = 1:30
    Xk = (T^k)*X0;
    Numero_medio_dias_sol = Numero_medio_dias_sol + Xk(1,1);
    Numero_medio_dias_nuvens = Numero_medio_dias_nuvens + Xk(2,1);
    Numero_medio_dias_chuva = Numero_medio_dias_chuva + Xk(3,1);

end
Numero_medio_dias_sol;
Numero_medio_dias_nuvens;
Numero_medio_dias_chuva;

%-------f--------