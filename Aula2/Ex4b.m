n_dias = 365;
N = 10000;


for n_pessoas = 10:1:100
    aniversario_2_ou_mais = 0;
    experiencias = zeros(n_pessoas,N);
    experiencias = randi(n_dias,n_pessoas,N);
    for col=1:N
        aniversario_pessoas = experiencias(:,col);
        aniversario_pessoas_sem_repeticao = unique(aniversario_pessoas);
        comprimento_sem_repeticao = length(aniversario_pessoas_sem_repeticao);
        if(comprimento_sem_repeticao<n_pessoas)
            aniversario_2_ou_mais = aniversario_2_ou_mais +1;
        end
    
    end

    Prob_aniversario_2 = aniversario_2_ou_mais/N;
    if (0.90<Prob_aniversario_2)
        menor_n = n_pessoas;
        break;
    end
end

menor_n