% Function   : square_root_newton_rhapson                                 %
% Parameters : n, The number whose root needs to be calculated            % 
% Returns    : iter - No of iterations for conversion.                    % 
%            : root - Root of the provided parameter                      %
% ----------------------------------------------------------------------- %
% Calculates the square root of the given number using Newton Rhapson.    %
% ----------------------------------------------------------------------- %

function [iter,root] = square_root_newton_rhapson(n)

    % Specifying required precision
    
    precision = 0.00001;
    
    % Initializer step before for loop
    x1 = n;
    error = x1*x1 - n;
    iter = 0;
    
    % Looping until error is as small as required.
    while(abs(error)>precision)
        % New components for point update
        funcX1 = x1*x1 - n;
        funcX1Deriv = 2*x1;
        
        % Update step
        x1 = x1 - funcX1/funcX1Deriv;
        error = x1*x1 - n;
        
        iter = iter + 1;
    end % End of while loop
    
    root = x1;
    
end

