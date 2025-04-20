clc
disp( '                                Gauss Elimination Method');
a=input(' Enter Augmented Matrix\n');
[a_x,a_y]=size(a);
disp('Starting Forward Elimination');
for j=1:a_x     % reference row 
  
    for i=1:a_x     % i is row
          c=a(i,j)/a(j,j);
         if i>j
        for k=1:a_y     %k is column
           
            a(i,k)=a(i,k)-c*a(j,k);     %main logic
           % i
            %j
            %k
           % a
            end
            
        end
    end
end

x=zeros(a_x,1);                 %x will save our answer
x(a_x)=a(a_x,a_y)/a(a_x,a_x);   %calc value of z
disp('Starting Back Substitution');
for i=a_x-1:-1:1 %reverse loop for back substitution
    sum=0;
        for j=i+1:a_x      %loop to sum all known variables in ith row 
        sum=sum+a(i,j)*x(j);           % sum+ coeff*known variable
        end
     x(i)=(a(i,a_x+1)-sum)/a(i,i);    %a(i,i) denotes that in back substitution we find only diagonal elements. 
end
x
