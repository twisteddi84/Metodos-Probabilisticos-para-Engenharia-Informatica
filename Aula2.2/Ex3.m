%----------a)---------

N = 10000;
experiencias = randi(0:1,4,N);
n_coroas_0=0;
n_coroas_1=0;
n_coroas_2=0;
n_coroas_3=0;
n_coroas_4=0;
total_lancamentos = 0;

for cols=1:N
    x = 0;
    lancamento = experiencias(:,cols);
    for linha = 1:4
        x = x + lancamento(linha);
    end
    if(x==0)
            n_coroas_0 = n_coroas_0 + 1;
    end
    if(x==1)
            n_coroas_1 = n_coroas_1 + 1;
    end
    if(x==2)
            n_coroas_2 = n_coroas_2 + 1;
    end
    if(x==3)
            n_coroas_3 = n_coroas_3 + 1;
    end
    if(x==4)
            n_coroas_4 = n_coroas_4 + 1;
    end

end

Prob_0 = n_coroas_0/N;
Prob_1 = n_coroas_1/N;
Prob_2 = n_coroas_2/N;
Prob_3 = n_coroas_3/N;
Prob_4 = n_coroas_4/N;
px = [Prob_0 , Prob_1 , Prob_2 , Prob_3 , Prob_4];
xi = 0:4;

stem(xi,px)

%---------b)---------

media_x = sum(xi.*px)
variancia_x = sum(xi.^2.*px) - (media_x)^2
desvio = sqrt(variancia_x)

%---------f)----------

Prob_pelo_menos_2 = (n_coroas_2+n_coroas_3+n_coroas_4)/N
Prob_ate_1 = (n_coroas_0+n_coroas_1)/N
Prob_entre_1_3 = (n_coroas_1 + n_coroas_2 + n_coroas_3)/N

