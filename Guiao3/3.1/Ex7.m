%-------a-------
H = [0,0,0,0,1/3,0 ; 1,0,0,0,1/3,0 ; 0,1/2,0,1,0,0 ; 0,0,1,0,0,0 ; 0,1/2,0,0,0,0 ; 0,0,0,0,1/3,0];
H0 = [1/6;1/6;1/6;1/6;1/6;1/6];
H3 = (H^10) * H0

%-------b-------

H = [0,0,0,0,1/3,1/6 ; 1,0,0,0,1/3,1/6 ; 0,1/2,0,1,0,1/6 ; 0,0,1,0,0,1/6 ; 0,1/2,0,0,0,1/6 ; 0,0,0,0,1/3,1/6];
H0 = [1/6;1/6;1/6;1/6;1/6;1/6];
H3_sem_dead = (H^10) * H0

%--------d--------

H = [0,0,0,0,1/3,0 ; 1,0,0,0,1/3,0 ; 0,1/2,0,1,0,0 ; 0,0,1,0,0,0 ; 0,1/2,0,0,0,0 ; 0,0,0,0,1/3,0];
tele = ones(6,6)/6;
A = 0.8 * H + 0.2 * tele;
H0 = [1/6;1/6;1/6;1/6;1/6;1/6];
H3 = (H^10) * H0

H = [0,0,0,0,1/3,1/6 ; 1,0,0,0,1/3,1/6 ; 0,1/2,0,1,0,1/6 ; 0,0,1,0,0,1/6 ; 0,1/2,0,0,0,1/6 ; 0,0,0,0,1/3,1/6];
A = 0.8 * H + 0.2 * tele;
H0 = [1/6;1/6;1/6;1/6;1/6;1/6];
H3 = (H^10) * H0