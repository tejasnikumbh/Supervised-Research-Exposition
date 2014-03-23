% Function : main                                                         %
% ----------------------------------------------------------------------- %
% Main function to compute and compare the various methods to evaluate    %
% the square root of a number. Namely, Bisection, Newton Rhapson and the  %
% secant method. We display number of iterations for numbers and also     %
% display conclusions.                                                    %
% ----------------------------------------------------------------------- %
function [] = main()

% Introdution %
disp('Main program to compare numerical methods for computing square root');

% Initializing variables
iterBisection = zeros(1000);
iterNewtonRhapson = zeros(1000);
iterSecant = zeros(1000);
iterFalsePos = zeros(1000);
% Number of iterations for  various numbers using various methods %
for i=1:1000
    [iterBisection(i),root] = square_root_bisection(i);
    [iterNewtonRhapson(i),root] = square_root_newton_rhapson(i);
    [iterSecant(i),root] = square_root_secant(i);
    [iterFalsePos(i),root] = square_root_false_pos(i);
end

% Plotting the results for All 4 methods
%plot(iterBisection,'r');
%hold on;
%plot(iterNewtonRhapson,'g');
%hold on;
%plot(iterSecant,'b');
%hold on;
%plot(iterFalsePos,'m');
%hold on;
end

