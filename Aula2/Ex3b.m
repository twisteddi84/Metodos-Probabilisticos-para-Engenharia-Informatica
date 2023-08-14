
T = 1000; %Tamanho Array
N = 100000;
keys = 1:20:200;
i = 0;
Prob_experiencias_valida = zeros(10,1);


for n_keys=1:20:200
    i = i +1;
    n_experiencias_validas = 0;
    experiencias = randi(T,n_keys,N);
   
    for col=1:N
        conjunto_keys = experiencias(:,col);
        conjunto_keys_sem_repeticoes = unique(conjunto_keys);
        compri_keys_sem_repeticao = length(conjunto_keys_sem_repeticoes);
        if(compri_keys_sem_repeticao<n_keys)
            n_experiencias_validas = n_experiencias_validas + 1;
        end
    end
    Prob = n_experiencias_validas/N*100;

    Prob_experiencias_valida(i,1) = Prob;

end

plot(keys,Prob_experiencias_valida)
