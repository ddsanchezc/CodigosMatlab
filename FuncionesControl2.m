%% LRG FUNCION DE TRANSFERENCIA
num = [0 0.3387 4.1089 12.4621];
den=[1 6 8 0];
rlocus(num,den)
v= [-50 50 -50 50]
grid
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% RESPUESTA A ESCALON
s =tf('s')
gp=1/((s+2)*(s+4))
gc=(0.3387*(s+6.0658)^2)/s   %controlador
g=gc*gp
h=1
sys=feedback(g,h)
t=0:0.1:10;
step(sys,t)
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%




