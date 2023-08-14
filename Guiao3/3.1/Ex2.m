%------a-------
T = [1/3,1/4,0;1/3,11/20,1/2;1/3,1/5,1/2];

%------b-------

Alunos_A = 90-(90/6)*2;
Alunos_B = 90/6;
Alunos_C = 90/6;

X0=[Alunos_A;Alunos_B;Alunos_C];

%-------C-------

X30=(T^30)*X0;

%-------d-------

Alunos_A = 30;
Alunos_B = 30;
Alunos_C = 30;

X0=[Alunos_A;Alunos_B;Alunos_C]

X30_2=(T^30)*X0



