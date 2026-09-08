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

% size – grazina matricos matmenis
% max – randa didziausia reiksme
% M = max(A)    Didziausia kiekvieno stulpelio reiksme

%% Papildoma užduotis

N = 9;
v = N+1 : 0.5 : N+4;

A = N : N+8;
A = reshape(A, 3, 3)';

disp('Vektorius v:');
disp(v);

disp('Matrica A:');
disp(A);

% a) 3 eil, 2 stulp
a = A(3,2);

% b) 2-3 eil, 1-2 stulp
b = A(2:3, 1:2);

% c) 1 ir 3 eil, 1 ir 3 stulp
c = A([1 3], [1 3]);