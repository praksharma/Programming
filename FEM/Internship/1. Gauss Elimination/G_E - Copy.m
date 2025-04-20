clc
disp( '                                Gauss Elimination Method');
a=input(' Enter Augmented Matrix\n');
[a_x,a_y]=size(a);
disp('Starting Forward Elimination');
for j=1:a_x    
      for i=1:a_x     
          c=a(i,j)/a(j,j);
          if i>j
       		 for k=1:a_y 
                       a(i,k)=a(i,k)-c*a(j,k);    
                 end  
          end
      end
end

x=zeros(a_x,1);             
x(a_x)=a(a_x,a_y)/a(a_x,a_x);   
disp('Starting Back Substitution');
for i=a_x-1:-1:1 %reverse loop for back substitution
    sum=0;
        for j=i+1:a_x      
        sum=sum+a(i,j)*x(j);        
        end
     x(i)=(a(i,a_x+1)-sum)/a(i,i);   
end
x
