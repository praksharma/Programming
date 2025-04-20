clc
disp('                                  Numerical Integration');
f=input('Enter a  function\n','s');
u=input('Enter Upper Limit of integration\n');
l=input('Enter Lower limit of integration\n');
h=(u-l)/10;
tab=zeros(2,10);
for i=0:10     
    tab(1,i+1)=l+i*h;
    x=tab(1,1+i);
    tab(2,1+i)=eval(f);
end
int_trap=h/2*(sum(tab(2,1:10))+2*sum(tab(2,2:9)));
int_simp_1_3=h/3*(sum(tab(2,1:10))+4*sum(tab(2,2:2:9))+2*sum(tab(2,3:2:8)));
int_simp_3_8=3*h/8*(sum(tab(2,1:10))+2*sum(tab(2,4:3:7))+3*(tab(2,1)+tab(2,2)+tab(2,4)+tab(2,5)+tab(2,7)+tab(2,8)));
int_weedle=3*h/10*(tab(2,1)+5*tab(2,2)+tab(2,3)+6*tab(2,4)+tab(2,5)+5*tab(2,6)+2*tab(2,7)+5*tab(2,8)+tab(2,9)+5*tab(2,10));
fprintf('\n by Trapezoidal rule:  %f \n by Simpson 1/3:  %f\n by Simpson 3/8:  %f\n by Weedle Rule:   %f\n',int_trap,int_simp_1_3,int_simp_3_8,int_weedle);