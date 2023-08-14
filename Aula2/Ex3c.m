T = 100:100:1000; %Tamanho Array
N = 100000;
keys = 50;
i = 0;
Prob_experiencias_valida = zeros(10,1);


for n_T = T
    i = i +1;
    n_experiencias_validas = 0;
    experiencias = randi(n_T,keys,N);
   
    for col=1:N
        conjunto_keys = experiencias(:,col);
        conjunto_keys_sem_repeticoes = unique(conjunto_keys);
        compri_keys_sem_repeticao = length(conjunto_keys_sem_repeticoes);
        if(compri_keys_sem_repeticao==keys)
            n_experiencias_validas = n_experiencias_validas + 1;
        end
    end
    Prob = n_experiencias_validas/N*100;

    Prob_experiencias_valida(i,1) = Prob;

end

plot(T,Prob_experiencias_valida)