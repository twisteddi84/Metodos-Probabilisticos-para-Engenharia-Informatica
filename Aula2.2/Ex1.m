pX = ones(1,6)/6*100;
xi = 1:6;
subplot(1,2,1)
stem(xi,pX)
FX = cumsum([0 pX]);
subplot(1,2,2)
stairs(FX)
