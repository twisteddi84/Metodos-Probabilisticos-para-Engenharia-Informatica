dardos = linspace(10,100,10);
alvos = 1000;
N = 10000;
i=0;
Prob_experiencias_valida = zeros(10,1);

for n_dardos = linspace(10,100,10)
    i = i +1;
    n_experiencias_validas = 0;
    experiencia = randi(alvos,n_dardos,N);

    for col = 1:N
        lancamento = experiencia(:,col);
        lancamento_sem_repaticoes = unique(lancamento);
        comprimento_coluna = length(lancamento_sem_repaticoes);
        if(comprimento_coluna)<n_dardos
            n_experiencias_validas = n_experiencias_validas + 1;
        end
    end

    Prob_experiencias_valida(i,1)=n_experiencias_validas;

end

subplot(1,2,1)
plot(dardos,Prob_experiencias_valida)

dardos = linspace(10,100,10);
alvos = 100000;
N = 10000;
i=0;
Prob_experiencias_valida = zeros(10,1);

for n_dardos = linspace(10,100,10)
    i = i +1;
    n_experiencias_validas = 0;
    experiencia = randi(alvos,n_dardos,N);

    for col = 1:N
        lancamento = experiencia(:,col);
        lancamento_sem_repaticoes = unique(lancamento);
        comprimento_coluna = length(lancamento_sem_repaticoes);
        if(comprimento_coluna)<n_dardos
            n_experiencias_validas = n_experiencias_validas + 1;
        end
    end

    Prob_experiencias_valida(i,1)=n_experiencias_validas;

end

subplot(1,2,2)
plot(dardos,Prob_experiencias_valida)