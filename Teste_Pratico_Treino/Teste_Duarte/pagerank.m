clear all;
clc;

%% a)

H = [0.0 1/2 1/3 1/4 0.0;
     1/2 0.0 0.0 1/4 1/2;
     1/2 1/2 1/3 1/4 0.0;
     0.0 0.0 0.0 0.0 1/2;
     0.0 0.0 1/3 1/4 0.0;];

b = 0.8;

A = b.*H + (1 - b) .* (ones(5)/5)

%% b)

x0 = ones(1,5)/5;

T10 = A^10 * x0';

fprintf("PROB C: %f\n", T10(1));
fprintf("PROB D: %f\n", T10(2));
fprintf("PROB E: %f\n", T10(3));
fprintf("PROB F: %f\n", T10(4));
fprintf("PROB G: %f\n", T10(5));