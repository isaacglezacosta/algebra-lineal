% Factorización LU

% Matriz
A = [2 3 2 4; 4 10 -4 0; -3 -2 -5 -2; -2 4 4 -7];
U = A

% Número de filas
n = size(A, 1);

% Matriz identidad
L = eye(n)

% Gauss-Jordan
for i=1:n % Filas
  for j=1:n % Columnas
    if(i < j)
      ratio = U(j, i)/U(i, i);
      U(j,:) = U(j,:) - ratio * U(i,:) % Betas
      L(j, i) = ratio; % Actualizar ratios en Matriz Identidad
    endif
  endfor
endfor

% Resultados
U
I
A == L * U
