n_lancamentos = 2;
faces_dado = 6 ;
N = 10000;

soma_igual_9 = 0;
numero_par=0;
ter_numero_5 = 0;
diferente_1 = 0;

experiencias = randi(faces_dado,n_lancamentos,N);

for col= 1:N
    lancamento = experiencias(:,col);
    soma_lancamentos = lancamento(1,1) + lancamento(2,1);
    if(soma_lancamentos==9)
        soma_igual_9 = soma_igual_9 + 1;
    end
    segundo_numero_par = rem(lancamento(2,1),2);
    if(segundo_numero_par==0)
        numero_par = numero_par +1 ;
    end
    if(lancamento(1,1)==5||lancamento(2,1)==5)
        ter_numero_5 = ter_numero_5 +1 ;
    end
    if(lancamento(1,1)~=1 && lancamento(2,1)~=1)
        diferente_1 = diferente_1 + 1;
    end
end

Prob_A = soma_igual_9/N;
Prob_b = numero_par/N
Prob_C = ter_numero_5/N;
Prob_D = diferente_1/N;

Prob_A_e_B = Prob_A * Prob_b;
Prob_B_A = Prob_A_e_B/Prob_A