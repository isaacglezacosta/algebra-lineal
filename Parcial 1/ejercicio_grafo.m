% Ejercicio Grafo
close all; clearvars; clc;

% Matriz de adyacencia
A = [0 0 1 0 1 0 1 0;
     0 0 0 1 0 1 0 1;
     1 0 0 0 1 0 1 0;
     0 1 0 0 0 1 0 1;
     1 0 1 0 0 0 1 0;
     0 1 0 1 0 0 0 1;
     1 0 1 0 1 0 0 0;
     0 1 0 1 0 1 0 0];

% Posiciones de los nodos
xy = [1, 5 %1
      3, 5 %2
      5, 5 %3
      1, 3 %4
      3, 3 %5
      5, 3 %6
      2, 1 %7
      4, 1 ]; %8

% Figura
gplot(A, xy, '*-')
ylim([0 6])
xlim([0 6])

% Mostrar número
for i=1:size(xy,1)
  text(xy(i,1),xy(i,2),num2str(i),'fontsize',20,'fontweight','bold')
end
