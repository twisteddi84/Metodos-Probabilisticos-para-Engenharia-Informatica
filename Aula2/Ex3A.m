T = 1000; %Tamanho Array
keys = 10;
N = 100000;


experiencias = randi(T-1,keys,N);
n_experiencias_validas = 0;

for col=1:N
    conjunto_keys = experiencias(:,col);
    conjunto_keys_sem_repeticoes = unique(conjunto_keys);
    compri_keys_sem_repeticao = length(conjunto_keys_sem_repeticoes);
    if(compri_keys_sem_repeticao<10)
        n_experiencias_validas = n_experiencias_validas + 1;
    end
end

Prob_experiencias_valida = n_experiencias_validas/N * 100
