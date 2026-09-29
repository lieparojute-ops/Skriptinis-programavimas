% Liepa Rojute EEf-25/2
% 2026-09-29
% 8 variantas

%% 1. Trimatis grafiku vaizdavimas

clear
close all

% a)

x = linspace(-2, 2, 100);
y = linspace(-2, 2, 100);

[X, Y] = meshgrid(x, y);

Z = sin(abs(X + Y) / 20) .* exp(-abs(X + Y));   % Duota lygtis

figure;

surf(X, Y, Z);

colormap(spring);

shading interp;

view(90, 90);

xlabel('x');
ylabel('y');
zlabel('f(x,y)');

title('a) f(x,y) = sin(|x+y|/20) e^{-|x+y|}');

grid on;

%% b)

theta = linspace(0, 2*pi, 100);

r = linspace(0, 1, 100);

[R, THETA] = meshgrid(r, theta);

X = R .* cos(THETA);
Y = R .* sin(THETA);

Z = 1 - 2 .* X.^2 - 3 .* Y.^2;  % Duota lygtis

figure;

surf(X, Y, Z);

colormap(spring);

shading interp;

view(45, 45);

xlabel('x');
ylabel('y');
zlabel('f(x,y)');

title('b) f(x,y) = 1 - 2x^2 - 3y^2');

grid on;

%% Papildoma uzduotis 
% (5 variantas)

x = linspace(-1, 1, 100);
y = linspace(-1, 1, 100);

[X, Y] = meshgrid(x, y);

Z = 1 - (X.^2 + Y.^2);   % Duota lygtis

figure;

surf(X, Y, Z, 'FaceColor', 'blue');

alpha(0.5);

xlabel('x');
ylabel('y');
zlabel('z(x,y)');

title('z(x,y) = 1 - (x^2 + y^2)');

grid on;