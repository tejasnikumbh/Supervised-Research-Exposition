% Function   : square_root_false_pos                                      %
% Parameters : n, The number whose root needs to be calculated            % 
% Returns    : iter - No of iterations for conversion.                    % 
%            : root - Root of the provided parameter                      %
% ----------------------------------------------------------------------- %
% Calculates the square root of the given number using False position     %
% method.                                                                 % 
% ----------------------------------------------------------------------- %

function [iter,root] = square_root_bisection(n)
    
    % Defining points
    x1 = 0;
    x2 = n;
    xMid = (x1 + x2)/2;
    
    % Function values at those points
    funcX1 = x1*x1 - n;
    funcX2 = x2*x2 - n;
    funcXMid = xMid*xMid - n;
    
    % Signs of function values at those points.
    signfX1 = sign(funcX1);
    signfX2 = sign(funcX2);
    signfXMid = sign(funcXMid);
    
    % Defining error and precision.
    error = funcXMid;
    precision = 0.00001;
    
    % Defining number of iterations
    iter = 0;
    
    % Looping until absolute value of error is less than precision
    
    while(abs(error)>precision)
        % Checking which direction to head in.
        if(signfX1 == signfXMid)
            x1 = xMid;
        else
            x2 = xMid;    
        end
        
        % Performing updates on values accordingly
        xMid = (x1+x2)/2;
    
        funcX1 = x1*x1 - n;
        funcX2 = x2*x2 - n;
        funcXMid = xMid*xMid - n;
            
        signfX1 = sign(funcX1);
        signfX2 = sign(funcX2);
        signfXMid = sign(funcXMid);
    
        error = funcXMid;
        iter = iter + 1;
    end % End of while loop
    root = xMid;
    
end % End of function

