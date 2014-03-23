% Function   : square_root_secant                                         %
% Parameters : n, The number whose root needs to be calculated            % 
% Returns    : iter - No of iterations for conversion.                    % 
%            : root - Root of the provided parameter                      %
% ----------------------------------------------------------------------- %
% Calculates the square root of the given number using secant method .    %
% ----------------------------------------------------------------------- %

function [iter,root] = square_root_newton_rhapson(n)

    % Specifying required precision
    
    precision = 0.00001;
    
    % Initializer step before for loop
    x1 = 0;
    x2 = n;
    error = x2*x2 - n;
    iter = 0;
    
    % Looping until error is as small as required.
    while(abs(error)>precision)
        % New components for point update
        funcX1 = x1*x1 - n;
        funcX2 = x2*x2 - n;
        funcSecant = (x2 - x1)/(funcX2-funcX1);
        
        % Update step
        x1 = x2;
        x2 = x2 - funcX2*(funcSecant);
        error = x2*x2 - n;
        iter = iter + 1;
    end % End of while loop
    
    root = x2;
    
end

