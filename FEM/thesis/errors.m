% x=0:0.01:1;
% u_exact=sin(pi.*x)/pi/pi;
% u_galerkin=-12/pi^3*(x.^2-x);
% plot(x,u_exact,x,u_galerkin,'--r');
% title('Comparing results')
% xlabel('X values')
% ylabel('U values')
% legend('Exact Solution','Galerkin method solution')
% 



%% Relative Errors
leastsq_relative_error=sum(u_exact-u_least_sq);
collocation_relative_error=sum(u_exact-u_collocation);
galerkin_relative_error=sum(u_exact-u_galerkin);

%% Percentage Errors
leastsq_percentage_error=leastsq_relative_error/sum(u_exact)*100;
collocation_percentage_error=collocation_relative_error/sum(u_exact)*100;
galerkin_percentage_error=galerkin_relative_error/sum(u_exact)*100;
%% Display results
clc
disp(' Relative Error');
fprintf(' Least Square method: %f',leastsq_relative_error);
fprintf('\n Collocation Method: %f',collocation_relative_error);
fprintf('\n Galerkin Method: %f\n\n',galerkin_relative_error);
disp(' Percenatage Error');
fprintf(' Least Square method: %f percent',leastsq_percentage_error);
fprintf('\n Collocation Method: %f percent',collocation_percentage_error);
fprintf('\n Galerkin Method: %f percent\n\n',galerkin_percentage_error);





