% Liepa Rojute EEf-25/2
% 2026-10-06
% 4 variantas

%% 1. Struktūros

% a)
x = linspace(0, 2, 200);

f = cos(sin(2*pi*x));

signalas.duomenys = f;
signalas.x = x;
signalas.pavadinimas = 'f(x) = cos(sin(2\pix))';

disp(signalas);

% b)
figure;
plot(signalas.x, signalas.duomenys);
grid on;

xlabel('x');
ylabel('f(x)');
title(signalas.pavadinimas);

%% 2. Srauto valdymo konstruktoriai

while true

    m = input('Įveskite m: ');
    n = input('Įveskite n: ');

    if m <= 0 || n <= 0
        disp('m ir n turi būti teigiami skaičiai.');
        continue;
    end

    if m == n
        disp('m ir n reikšmės vienodos. Programa baigta.');
        break;
    end

    if m > n
        while m - n > 0
            m = m - n;
        end
        disp(m);
    else
        while n - m > 0
            n = n - m;
        end
        disp(n);

    end

end

%% Papildoma užduotis 
% (10 variantas)

pirmas = [];
antras = [];

k = 0;

while k < 3

    a = round(rand * 9);
    b = round(rand * 11);

    pirmas(end+1) = a;
    antras(end+1) = b;

    if a > b
        k = k + 1;
    else
        k = 0;
    end

end

disp('Pirmieji skaičiai:');
disp(pirmas);

disp('Antrieji skaičiai:');
disp(antras);

figure;
plot(pirmas, '-o');
hold on;
plot(antras, '-o');
hold off;

grid on;
xlabel('Generavimo eilės numeris');
ylabel('Sugeneruotas skaičius');
title('Atsitiktinai sugeneruotų skaičių kitimas');
legend('Pirmasis skaičius', 'Antrasis skaičius');
