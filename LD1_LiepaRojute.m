% Liepa Rojute EEf-25/2
% 2026-09-08

%
% Paprastas skriptas
%

x = 1:32;
y = x.^2;

plot(x, y, 'o-r', x, y/3, 'xb')
title('Dvi funkcijos')
xlabel('X-ai')
ylabel('F_1 [-o-]   |   F_2 [-x-]')

% pagalbos paieska: 
% help - greitas funkcijos sintakses pasitikslinimo budas
% doc / docsearch - detalesnis funkcijos aprasymas
% Help (interaktyvus pagalbos) langas (<F1>)

% linspace – sukuria tolygiai išdestytu tasku vektoriu
% v = linspace(x1, x2, n)   |    n tasku nuo x1 iki x2

% size – grazina matricos/masyvo matmenis (sz = size(A))
% max – randa didziausia elementa (M = max(A))
% M = max(A)    Didziausia kiekvieno stulpelio reiksme

%% Papildoma užduotis
format shortG

%1
N = 9;

%2
v = N+1 : 0.5 : N+4;

%3
A = N : N+8;
A = reshape(A, 3, 3)';

disp('Vektorius v:');
disp(v);

disp('Matrica A:');
disp(A);

%4
% a)
a = A(3,2);

% b)
b = A(2:3, 1:2);

% c)
c = A([1 3], [1 3]);

%5
% prijungimas su visais elementais
v_mod = [v NaN NaN];
v_mod = reshape(v_mod, 3, 3)';

B = [A v_mod];

disp('A + v:');
disp(B);

% prijungimas ne su visais elementais
v_mod = v(2:2:6)';
B = [A v_mod];

disp('A + v:');
disp(B);