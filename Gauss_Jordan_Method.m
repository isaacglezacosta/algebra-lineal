% Gauss Jordan Method
close all; clearvars; clc;

A = [1 1 1; 2 -1 -1; 0 3 -2];
b = [6 3 3]'; % ' operación transpuesta

% Matriz aumentada
Ab = [A b]

% Número de filas
n = size(A, 1)

% Este Guss-Jordan solo considera matrices cuadradas (nxn)
for i = 1:n % Filas
  Ab(i, :) = Ab(i, :)/Ab(i, i) % Alfas
  for j = 1:n % Columnas
    if(i ~= j)
      ratio = Ab(j, i)/Ab(i, i)
      Ab(j,:) = Ab(j,:) - ratio * Ab(i,:) % Betas
    endif
  endfor
endfor
