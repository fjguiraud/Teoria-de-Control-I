%%Taller de matrices Matlab

%  Fernando Guiraud       8-945-692    Lab A   

%#1) 
fprintf(' Exportar las matrices de excel \n');

A = xlsread('A.xlsx', 'A1:J4')
B = xlsread('B.xlsx', 'A1:C3')
C = xlsread('C.xlsx', 'A1:C3')

%#2)
fprintf(' Crear las matrices \n');
A = [1,2,3,0,22,31,13,0,0,0;4,5,6,7,2,9,12,11,0,1;8,22,33,0,0,0,0,0,0,1;0,44,55,66,1,2,0,1,0,3]
B = [10,-2,4;-15,6,12;0,12,20]
C = [1,6,9;2,7,20;3,8,11]

%#3)
fprintf(' Matrices Traspuestas \n');
fprintf(' Traspuesta de A = \n');
A'
fprintf(' Traspuesta de B = \n');
B'
fprintf(' traspuesta de C = \n');
C'

fprintf(' Matrices inversas \n');
%La matriz A no es cuadrada asi que no tiene inversa
fprintf(' Inversa de A = No es cuadrada por lo tanto no existe \n');
fprintf(' Inversa de B = \n');
inv(B)
fprintf(' Inversa de C = \n');
inv(C)

%#4)
fprintf(' Diagonales principales \n');

fprintf(' Diagonal principal de A = \n');
diag(A,0)
fprintf(' Diagonal principal de B = \n');
diag(B,0)
fprintf(' Diagonal principal de C = \n');
diag(C,0)

fprintf(' Diagonales superiores \n');

fprintf(' Diagonal superior de A = \n');
diag(A,1)
fprintf(' Diagonal superior de B = \n');
diag(B,1)
fprintf(' Diagonal superior de C = \n');
diag(C,1)

fprintf(' Diagonales inferiores \n');

fprintf(' Diagonal inferior de A = \n');
diag(A,-1)
fprintf(' Diagonal inferior de B = \n');
diag(B,-1)
fprintf(' Diagonal inferior de C = \n');
diag(C,-1)

%#5)
fprintf(' Matriz aleatoria de 15 numeros \n');

z = 0;
s = 0;
F = zeros(3,5);
for i = 1:3
    for j = 1:5
        z=0;
        while z ~= 1
           r=randi([1,20],1,1);
           s=0;
           for ia = 1:3
               for ja = 1:5
                 if F(ia,ja)==r 
                     ja = 5;
                     ia = 3;
                     s = 1;
                
                 end
               end
               if (s == 0) && (ia == 3) && (ja == 5) 
                   z = 1;
               end
           end
        end
        F(i,j)=r;
    end
end
F

%#6) 
fprintf(' Determinante de cada matriz \n');
fprintf('  \n');
%La matriz A no es cuadrada asi que no tiene determinante
fprintf(' Determinante de A = No es cuadrada por lo tanto no existe \n');

fprintf('  \n');
fprintf(' Determinante de B = \n');
det(B)

fprintf(' Determinante de C = \n');
det(C)

%La matriz F no es cuadrada asi que no tiene determinante
fprintf(' Determinante de F = No es cuadrada por lo tanto no existe \n');
fprintf('  \n');

%#7) 
fprintf('  B + C = \n');
B + C

fprintf('  \n');
fprintf('  B * C = \n');
B * C

%#8) 
fprintf(' El valor minimo de A = \n');
min(min(A))

fprintf(' El valor maximo de A = \n');
max(max(A))

%#9) 
fprintf(' Valores de la columna 1 matriz B \n');
B(1:3 , 1)

fprintf(' Valores de la fila 3 matriz B \n');
B(3 , 1:3)

%#10) 
fprintf(' Valores de la fila 1 y 3 matriz C \n');
[C(1,1:3);C(3,1:3)]

%#11)

fprintf(' For para encontrar la ubicación de los elementos en F que tengan valor entre 3 y 5 \n');
fprintf('  \n');
a = 0;
for i = 1:size(F,1)
   for j = 1:size(F,2)
       if (F(i,j)>=3)&&(F(i,j)<=5)
           fprintf(' %d en la posicion: ( %d ,  %d ) \n', F(i,j),i,j);
           a=a+1;
       end
   end
   if(i==size(F,1))&&(j==size(F,2))&&(a==0)
       fprintf(' No existen valores entre 3 y 5 en la matriz F \n');
   end
end    

%#12)
fprintf(' Comando find para encontrar valores menores que 2 y mayores que 12 en la matriz F \n');
F
find(F < 2 | F > 12)

