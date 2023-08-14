sx = [5,50,100]; %Espaço de amostragem
px = [90/100,9/100,1/100]; %Probabilidades

subplot(1,2,1)
stem(sx,px,LineWidth=4)
xticks(0:5:101)
axis([0, 101, 0, 1]);

FX = cumsum([0 px 0]);

sx2 = [0 sx 110];
subplot(1,2,2)
stairs(sx2,FX,LineWidth=2)
xticks(0:5:120)
