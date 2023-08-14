N = 10000;


probabilidade = 0:10:100; %Probabilidade motor falhar


experiencia = randi([1,100],2,N);
Aviao_foi_com_o_crl_2 = zeros(1,11);

for p = probabilidade
    aviao_com_crl_2MOTORES = 0;
for cols= 1:N
    motores_falhados = 0;
    motores = experiencia(:,cols);
    if(motores(1)<=p)
        motores_falhados = motores_falhados + 1;
    end
    if(motores(2)<=p)
        motores_falhados = motores_falhados + 1;
    end
    if(motores_falhados>1)
        aviao_com_crl_2MOTORES = aviao_com_crl_2MOTORES + 1;
    end
end
n = p/10+1;
Prob_aviao_com_crl_2MOTORES = aviao_com_crl_2MOTORES/N * 100;
Aviao_foi_com_o_crl_2(1,n)=Prob_aviao_com_crl_2MOTORES;
end
plot(probabilidade,Aviao_foi_com_o_crl_2)
hold on


experiencia = randi([1,100],4,N);
Aviao_foi_com_o_crl_4 = zeros(1,11);
n=0;
for p = probabilidade
aviao_com_crl_4MOTORES = 0;
for cols= 1:N
    motores_falhados = 0;
    motores = experiencia(:,cols);
    if(motores(1)<=p)
        motores_falhados = motores_falhados + 1;
    end
    if(motores(2)<=p)
        motores_falhados = motores_falhados + 1;
    end
    if(motores(3)<=p)
        motores_falhados = motores_falhados + 1;
    end
    if(motores(4)<=p)
        motores_falhados = motores_falhados + 1;
    end
    if(motores_falhados>2)
        aviao_com_crl_4MOTORES = aviao_com_crl_4MOTORES + 1;
    end
end
n = p/10+1;
Prob_aviao_com_crl_4MOTORES = aviao_com_crl_4MOTORES/N * 100;
Aviao_foi_com_o_crl_4(1,n)=Prob_aviao_com_crl_4MOTORES;
end

plot(probabilidade,Aviao_foi_com_o_crl_4)
xticks(0:5:100)
xlabel('Probabilidade Motor Falhar')
ylabel('Probabilidade Avião Cair')
legend('2 Motores','4 Motores')