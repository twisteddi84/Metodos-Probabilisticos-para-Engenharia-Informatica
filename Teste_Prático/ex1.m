%% a

alpha = [0.2 , 0 , 0.3 , 0.1 , 0.45]

T = [0 , 0 , 0 , 0 , 0 , 0;
     alpha(1) , 0 , 0 , 0 , 0 , 0;
     0 , 0 , 0 , alpha(4) , alpha(5) , 0;
     0 , 0 , alpha(3) , 0 , 1-alpha(5) , 0;
     1-alpha(1) , 1 , 1-alpha(3) , 0 , 0 , 0;
     0 , 0 , 0 , 1-alpha(4) , 0 , 1]

%sum(T) 

%% b

X = [1;0;0;0;0;0]
count = 1;
while X(6,1) == 0
    X = T^count * X
    count = count + 1;
end

Prob = X(6,1) * 100

%c
N = 1e6;
sum = 0;

for n = 1:N
    estado = crawl(T,1,6);
    sum = sum + length(estado);
end
fprintf("Numero medio de casas percorridas: %f\n", sum/N);