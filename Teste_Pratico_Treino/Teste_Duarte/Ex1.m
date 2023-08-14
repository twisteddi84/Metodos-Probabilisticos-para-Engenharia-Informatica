clear all;
close all;
clc;

%% a)

T = [ 0 0 0 0 0 0;
      0.8 0 0 0.9 1 0;
      0 0.7 0 0.1 0 0;
      0 0.3 0.45 0 0 0;
      0.2 0 0 0 0 0;
      0 0 0.55 0 0 1 ]

sum(T)

Forma_canonica = T([1 5 3 4 2 6],[1 2 3 4 5 6])
%% b)

%% c)
Q = Forma_canonica(1:4,1:4)
F = inv(eye(length(Q)) - Q);

N = 1e6;
sum = 0;

for n = 1:N
    state = crawl(T,1,6);
    
    sum = sum + length(state);
end
fprintf("Valor medio %f\n", sum/N);
