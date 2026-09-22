% Liepa Rojute EEf-25/2
% 2026-09-22
% 8 variantas

%% 1. Dvimatis grafiku vaizdavimas

% a)

x = 0:0.1:2*pi;
y = x.^3 + tan(x);

figure
plot(x, y, 'bo')
xlabel('x')
ylabel('f(x)')
title('f(x) = x^3 + tan(x)')
legend('f(x) = x^3 + tan(x)')
axis([min(x) max(x) min(y) max(y)])
grid on

% b)

x = 0:0.1:2*pi;

y1 = exp(x);
y2 = exp(3*x);
y3 = exp(5*x);

figure
plot(x, y1, 'y')
hold on
plot(x, y2, 'r')
plot(x, y3, 'm')
hold off

xlabel('x')
ylabel('f(x)')
title('Eksponentines funkcijos')
legend('e^x', 'e^{3x}', 'e^{5x}')
axis([min(x) max(x) min([y1 y2 y3]) max([y1 y2 y3])])
grid on

%% 2. Specializuotu grafiku kurimas

% a)

P = [9 6 8 8;
    5 7 10 8;
    4 10 10 9;
    7 6 9 5;
    6 7 7 10;
    8 8 9 5];

studentai = {'Fausta', 'Mantas', 'Karolina', 'Jonas', 'Greta', 'Nojus'};

figure
bar(P)
xlabel('Studentas')
ylabel('Pazymys')
title('a)')
legend('1 egzaminas', '2 egzaminas', '3 egzaminas', '4 egzaminas')
xticks(1:6)
xticklabels(studentai)
ylim([0 10])
grid on

% b)

figure
bar(P, 'stacked')
xlabel('Studentas')
ylabel('Pazymiu suma')
title('b)')
legend('1 egzaminas', '2 egzaminas', '3 egzaminas', '4 egzaminas')
xticks(1:6)
xticklabels(studentai)
ylim([0 40])
grid on
