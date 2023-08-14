N = 10000;
experiencias = randi(100,5,N);
defeituosa_0 = 0;
defeituosa_1 = 0;
defeituosa_2 = 0;
defeituosa_3 = 0;
defeituosa_4 = 0;
defeituosa_5 = 0;
for cols = 1:N
    peca_defeituosa = 0;
    amostra = experiencias(:,cols);
    for linha = 1:5
        if amostra(linha)<=30
            peca_defeituosa = peca_defeituosa + 1;
        end
    end
    if(peca_defeituosa==0)
        defeituosa_0 = defeituosa_0 + 1;
    end
    if(peca_defeituosa==1)
        defeituosa_1 = defeituosa_1 + 1;
    end
    if(peca_defeituosa==2)
        defeituosa_2 = defeituosa_2 + 1;
    end
    if(peca_defeituosa==3)
        defeituosa_3 = defeituosa_3 + 1;
    end
    if(peca_defeituosa==4)
        defeituosa_4 = defeituosa_4 + 1;
    end
    if(peca_defeituosa==5)
        defeituosa_5 = defeituosa_5 + 1;
    end
end

Prob_0 = defeituosa_0/N * 100;
Prob_1 = defeituosa_1/N * 100;
Prob_2 = defeituosa_2/N * 100;
Prob_3 = defeituosa_3/N * 100;
Prob_4 = defeituosa_4/N * 100;
Prob_5 = defeituosa_5/N * 100;

px = [Prob_0 Prob_1 Prob_2 Prob_3 Prob_4 Prob_5];
sx = [0 1 2 3 4 5];
subplot(1,2,1)
stem(sx,px,LineWidth=2)
xlabel('Quantidade Defeitos')
ylabel('Probabilidade')
xticks(0:5)

%----------b)----------
subplot(1,2,2)
Fx = cumsum([0 px]);
stairs(Fx)

%----------c)----------
Prob_max_2 = (defeituosa_0 + defeituosa_1 + defeituosa_2)/N * 100

