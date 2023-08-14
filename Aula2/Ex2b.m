
dardos = linspace(10,100,10);
alvos = 1000;
N = 10000;
i=0;
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

P_n_experiencias_validas = n_experiencias_validas/experiencia;

end
subplot(1,2,1)
plot(dardos,P_n_experiencias_validas)