% Eliminación Gaussiana
clearvars; clc;

A = [3 6 -6; 2 -5 4; 5 28 -26];
b = [9 6 -8]';

% Matriz aumentada
Ab = [A b]

% Número de filas
n = size(Ab, 1);

for i = 1:n; % Filas
  Ab(i,:) = Ab(i,:) / Ab(i,i); % Alfas
  for j = 1:n; % Columnas
    if(i < j);
      ratio = Ab(j, i) / Ab(i, i);
      Ab(j,:) = Ab(j,:) - ratio * Ab(i,:); % Betas
    endif
  endfor
endfor
Ab
% Encontrar valores
x3 = Ab(n, n+1);
x2 = Ab(n-1, n+1) - Ab(n-1,n) * x3;
x1 = Ab(n-2, n+1) - Ab(n-2, n) * x3 - Ab(n-2, n-1) * x2;

% Mostrar valores
valores = [x1 x2 x3]'
