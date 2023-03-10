tf1=tf([1,1],[1,9,28,40,0])
tf2=feedback(tf1,1)
[r,k]=rlocus(tf2);
figure(1)
rlocus(tf2)
fprintf(' Cantidad de raices \n');
n = size(r,2)
i=1;
c=0;
    fprintf(' Punto a comprobar: -1 + 2i \n')
for i=1:n
    im=imag(r(i));
    re=real(r(i));
    if re == -1 && im == 2
    c=c+1;    
    end
end
if c==1
    fprintf(' Si pertenece \n');
else
    fprintf(' No pertenece \n');
end
k=0.1;
while k<148.214
k=k+3;

num=k*[1,1];
den=[1,9,28,40+k,0+k];
tf2=tf(num,den);
figure(2)
pzmap(tf2)
hold on
end
figure(1)
[num2 , den2] = zp2tf([],[-1+2i,-1-2i],1);
tf3 = tf(num2,den2);
figure(2)
pzmap(tf3)
hold off