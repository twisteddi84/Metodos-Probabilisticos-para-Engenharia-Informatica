%a
N =100000;
dardos = 20;
alvos = 100;
experiencias = randi(alvos,dardos,N);
n_valido = 0;
for col=1:N
    experiencia = experiencias(:,col);
    experiencia_sem_rep = unique(experiencia);
    if (length(experiencia_sem_rep)== dardos)
        n_valido = n_valido + 1;
    end
end
P_atingir_alvo_diferente = n_valido/N * 100

%b
N =100000;
dardos = 20;
alvos = 100;
experiencias = randi(alvos,dardos,N);
n_valido = 0;
for col=1:N
    experiencia = experiencias(:,col);
    experiencia_sem_rep = unique(experiencia);
    if (length(experiencia_sem_rep)< dardos)
        n_valido = n_valido + 1;
    end
end
P_atingir_alvo_mesmo = n_valido/N * 100

%c
N =100000;
dardos = 10:10:100;
alvos = 1000;
count = 1;
array_prob = zeros(1,10);

for dardos_atual = dardos
    experiencias = randi(alvos,dardos_atual,N);
    n_valido = 0;
    for col=1:N
        experiencia = experiencias(:,col);
        experiencia_sem_rep = unique(experiencia);
    if (length(experiencia_sem_rep)< dardos_atual)
        n_valido = n_valido + 1;
    end
    end
    P_atingir_mesmo_alvo = n_valido/N * 100;
    array_prob(1,count) = P_atingir_mesmo_alvo
    count = count +1;
end
figure(1)
subplot(2,1,1)
plot(dardos,array_prob,'.-')
hold on


N =100000;
dardos = 10:10:100;
alvos = 100000;
count = 1;
array_prob = zeros(1,10);

for dardos_atual = dardos
    experiencias = randi(alvos,dardos_atual,N);
    n_valido = 0;
    for col=1:N
        experiencia = experiencias(:,col);
        experiencia_sem_rep = unique(experiencia);
    if (length(experiencia_sem_rep)< dardos_atual)
        n_valido = n_valido + 1;
    end
    end
    P_atingir_mesmo_alvo = n_valido/N * 100;
    array_prob(1,count) = P_atingir_mesmo_alvo
    count = count +1;
end
figure(1)
subplot(2,1,2)
plot(dardos,array_prob,'.-')
axis([10 100 0 100])