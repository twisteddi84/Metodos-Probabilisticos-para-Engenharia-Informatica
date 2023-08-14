N = 10000;
Experiencias = randi(1000,8000,N);
Experiencia_valida = 0;

for cols=1:N
    peca_defeituosa = 0;
    fabrico_8000 = Experiencias(:,cols);
    for linha=1:8000
        if fabrico_8000(linha)==1
            peca_defeituosa = peca_defeituosa + 1;
        end
    end
    if(peca_defeituosa == 7)
        Experiencia_valida = Experiencia_valida + 1;
    end
end
Prob_7_defeituosas = Experiencia_valida/N


%----------b----------
lambda = 8000 * 1/1000;
k = 7;
pk = ((lambda^k)/factorial(k))*exp(-lambda)
