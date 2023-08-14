N = 1e5;
dp = 2;
m = 14;
nota_valida = 0;
passado = 0;

classificacoes = dp.*randn(1,N) + m;
for col = 1:N
    if(classificacoes(col)>12 && classificacoes(col)<16)
        nota_valida = nota_valida + 1;
    end  
    if(classificacoes(col)>=10)
        passado = passado + 1;
    end
end
Prob_entre_12_16 = nota_valida/N;
Prob_passar = passado/N;


