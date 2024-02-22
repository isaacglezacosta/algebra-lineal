% cadenas de Markov: proceso estacionaro
close all; clearvars; clc;

% población inicial
xa = [6e4 0 0]';

% matriz de transición
P = [0.8 0.2 0.05;
     0.05 0.75 0.05;
     0.15 0.05 0.9];

tiempo = 20; % n-meses
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
legend('Prod. A','Prod. B','Prod. C','location','best')
