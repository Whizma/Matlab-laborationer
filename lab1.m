%% Komplexa tal
 
a = 3 + 2i;
b = 5 - i;
x = a * b

%% Funktioner

g = @(x) exp(-0.1*x).* cos(x);
x = linspace(0,10);
y = g(x);
plot(x,y);
hold on
h = 1e-6;
deriv = @(f,x) (f(x+h) - f(x)) / h;
y2 = deriv(g,x);
plot(x,y2,'r');
axis on
title('Funktionen och dess derivata')
legend('funktion', 'derivata')
print('funktionsbild','-dpng')

%% Derivator
g = @(x) exp(-0.1*x).* cos(x);
x = linspace(0,10);
y = g(x);
plot(x,y);
hold on
h = 1e-6;
deriv = @(f,x) (f(x+h) - f(x)) / h;

h1 = @(x) exp(-0.1 * x) .* cos (x) - 0.1 .* exp(-0.1 * x) .* sin (x);	
h2 = @(x) -0.1 * exp(-0.1 * x) .* cos (x) - exp(-0.1 * x) .* sin (x);	
h3 = @(x) -0.1 * exp(-0.1 * x) .* cos (x) - 0.1 * exp(-0.1 * x) .* sin (x);	

y0 = deriv(g,x);
y1 = h1(x);
y2 = h2(x);
y3 = h3(x);

d1 = y1-y0;
d2 = y2-y0;
d3 = y3-y0;

norm(d1)
norm(d2)
norm(d3)

%% Matriser
A = 3 * eye(5);
B = 6 * ones(3,5);
M = [A ; B]

%% Ekvationssystem

A = [9 15 18 ; 2 6 -4 ; 8 16 12];
b = [753 ; 162 ; 688];
x = A\b;

%% Matris
A = [1 1 -1 ; 2 1 1 ; 4 3 -1];
d = det(A);

b = [2 ; 3 ; 4];
A = [1 1 -1 ; 2 1 1 ; 4 3 -1];
x = A\b

d = det(A)



