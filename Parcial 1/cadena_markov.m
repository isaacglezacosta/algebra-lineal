% Cadenas de Markov
close all; clearvars; clc;

% Población inicial 1
% xa = [100 0 0 0 0]';

% Poblacion inicial 2
xa = [20 30 0 10 40]';

% matriz de transición
P = [0.5 0.1 0.1 0.05 0.2;
     0.2 0.3 0.2 0.15 0.1;
     0.15 0.2 0.3 0.3 0.1;
     0.1 0.3 0.2 0.4 0.1;
     0.05 0.1 0.2 0.1 0.5];

tiempo = 100; % n-minutos
Evo = []; % evolución del tiempo

for n=0:tiempo
  Xkn = (P^n)*xa;
  Evo = [Evo Xkn];
endfor

Evo
grid on
hold on
plot(Evo(1,:),'r','LineWidth',2)
plot(Evo(2,:),'b','LineWidth',2)
plot(Evo(3,:),'k','LineWidth',2)
plot(Evo(4,:),'g','LineWidth',2)
plot(Evo(5,:),'y','LineWidth',2)
legend('Libros generales','Libros para ninos','Rompecabezas','Juguetes','Musica','location','best')
