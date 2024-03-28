% Parte 2 - Código
close all; clearvars; clc;

% Matrices
A = [1 -3 6; 4 1 -6; 7 9 2];
B = [-2 5 -9; 3 -4 1; -1 -4 -6];
C = [7 4 2; -5 -2 -2; 1 5 7];

% Ejercicio 1
E = (3*C - 2*B + 8*A) / 4
P = 3*C - 2*B + 8*A - 4*E

if (3*C - 2*B + 8*A - 4*E == 0)
  display('True')
else
  display('False')
endif

% Ejercicio 2
F = 1 - A - B - C
M = A + B + C + F

if (A + B + C + F == 1)
  display('True')
else
  display('False')
endif
