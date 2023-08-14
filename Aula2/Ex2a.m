experiencia = randi(100,20,10000);
n_experiencias_validas = 0;

for col = 1:10000
    lancamento = experiencia(:,col);
    lancamento_sem_repaticoes = unique(lancamento);
    comprimento_coluna = length(lancamento_sem_repaticoes);
    if(comprimento_coluna)==20
        n_experiencias_validas = n_experiencias_validas + 1;
    end
end

P_n_experiencias_validas = n_experiencias_validas/10000 * 100