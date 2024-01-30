close all; clearvars; clc;

% Aritmética básica
6 / 2 * 8 + 9 * (4 / 5) ^ 2

% Vector
u = [1 5 6 9];
% z = randperm[150];
image()

% Imprensión de onda senoidal
x = linspace(0, 2 * pi, 50);
y = sin(x)
plot(x, y,'LineWidth',2)
grid on
grid minor
