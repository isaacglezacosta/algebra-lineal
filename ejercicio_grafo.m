% Representación matricial de grafos
close all; clearvars; clc;

% Matriz de adyacencia
A = [0 1 1 0;
     1 0 1 0;
     1 1 0 1;
     0 0 1 0];

% Posiciones de los nodos (pares ordenados)
xy = [0, 2  % A
      3, 4  % B
      4, 2  % C
      2, 1];% D

% Mostrar el grafo
gplot(A,xy,'o-')
grid on
grid minor
