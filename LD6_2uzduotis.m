% Liepa Rojute EEf-25/2
% 2026-10-13
% 26 variantas

%% 2. Globaliuju MATLAB kintamuju naudojimas
clear;
clc;
close all;

% Vektoriaus generavimas
global x y

x = 2*pi:-0.1:-2*pi;
y = zeros(size(x));

%% faile funkcija_1.m
funkcija_1;

%% faile funkcija_2.m
funkcija_2;

%% Funkcijos grafiko braizymas
figure;
plot(x, y, 'y--*');
grid on;

xlabel('x');
ylabel('y(x)');
title('2 uzduotis. Funkcijos y(x) grafikas');
