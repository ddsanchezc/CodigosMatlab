%% Funcion Visualizar
% Carga de imagen
a=imread('bart_simpson.png');
%Extraccion de planos
ar=a(:,:,1);
ag=a(:,:,2);
ab=a(:,:,3);

%Despliege
figure(1),subplot(2,3,2),imshow(a),title('plano')
figure(1),subplot(2,3,4),imshow(ar),title('plano rojo')
figure(1),subplot(2,3,5),imshow(ag),title('plano verde')
figure(1),subplot(2,3,6),imshow(ab),title('plano azul')

%% Funcion Recorte
a=imread('bart_simpson.png');
a_recorte=a(250:450,150:300,:);
figure(3),image(a_recorte)

%% Funcion vi
a=imread('bart_simpson.png');
figure(2),image(a)

%% linea en imagen
a=imread('bart_simpson.png');
ar=a(:,:,1);
pl=ar(200,:);
figure,plot(pl)
ar(200,:)=0;
figure(1),imshow(ar)

%% bits
a=imread('bart_simpson.png');
ar=a(:,:,1);

arb7=bitand(ar,128);
arb6=bitand(ar,64);
arb5=bitand(ar,32);
arb4=bitand(ar,16);
arb3=bitand(ar,8);
arb2=bitand(ar,4);
arb1=bitand(ar,2);
arb0=bitand(ar,1);

figure(2),subplot(3,3,1),imshow(ar)
figure(2),subplot(3,3,2),imshow(arb7)
figure(2),subplot(3,3,3),imshow(arb6)
figure(2),subplot(3,3,4),imshow(arb5)
figure(2),subplot(3,3,5),imshow(arb4)
figure(2),subplot(3,3,6),imshow(arb3)
figure(2),subplot(3,3,7),imshow(arb2)
figure(2),subplot(3,3,8),imshow(arb1)
figure(2),subplot(3,3,9),imshow(arb0)

%arnuevo = arb7+arb6+arb5+arb4+arb3+arb2+arb1+arb0;
arnuevo = arb7+arb6+arb5;
figure(3),subplot(2,1,1),imshow(ar)
figure(3),subplot(2,1,2),imshow(arnuevo)


