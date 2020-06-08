clc;clear all;
fprintf("Bienvenido!!!\n");
fprintf("Carga tu imagen\n");
%Ingresar el nombre de la imagen cargada
format short
img = imread('mru.png');
gris = rgb2gray(img);
[f,c] = size(gris);
%imshow(gris);
xMin = input('Ingrese xMin: ');
xMax = input('Ingrese xMax: ');
yMin = input('Ingrese yMin: ');
yMax = input('Ingrese yMin: ');
incX = (xMax-xMin)/c;
incY = (yMax-yMin)/f;
ejey = yMin:incY:yMax
ejeX = xMax:-incX:xMin;
flip(ejeX)
x = input('Ingresa x (no debe ser decimal): ');
for i=1:1:c
    if x == round(ejeX(1,i))
        %imshow(gris(1:f,1:i))
        aux = i;
    end    
end
cont = 1;

for j=1:1:f
    a = gris(j,aux);
    if a >=110 && a < 120
        disp(j)
        aux2 = j;
    end
    
end
fprintf('El valor de Y es:');
disp(ejey(1,aux2))



    



