% Liepa Rojute EEf-25/2
% 2026-09-15

%% 1. Vienmaciai masyvai

% a)
a = 5 : 2 : 34;

% b)
b = exp(a);

% c)
c = a ./ b;

% d)
Ats = c';

disp('1. d)');
disp(Ats);

%% 2. Dvimaciai masyvai

clear;
% a)
A =  [pi/2, 3i;
    log(2), 2*pi];

disp('2. a):');
disp(A);

% b)
B = [exp(A(1,1)), exp(A(1,2))];

A = [A; B];

disp('2. b)');
disp(A);

% c)
eiluciu_suma = sum(A, 2);

disp('2. c)');
disp(eiluciu_suma);

%% 3. Praktinis veiksmu su masyvais taikymas

% Duomenys:
A = 5.5;
f = 5;
sigma = 0.8;
U1 = 3.5;
U2 = 2;

t = 0 : 0.005 : 1;  % laiko vektorius

s = A*sin(2*pi*f*t) + 0.5*A*cos(4*pi*f*t);  % signalas

n = sigma*randn(size(t));   % triukšmas

s_triuksmingas = s + n;     % triukšmo paveiktas signalas


% a)
virs_U1 = s_triuksmingas(s_triuksmingas > U1);

disp('3. a)');
disp(virs_U1);


% b):
s_filtruotas = s_triuksmingas;
s_filtruotas(abs(s_filtruotas) < U2) = 0;

disp('3. b)');
disp(s_filtruotas);


% c)
nefiltruotas_s = size(s_triuksmingas);

disp('3. c)');
disp(nefiltruotas_s);


% d)
dydis = length(virs_U1);

disp('3. d)');
disp(dydis);


% e)
did = max(s_filtruotas);
maz = min(s_filtruotas);

disp('Didziausia filtruoto signalo reikšme:');
disp(did);

disp('Maziausia filtruoto signalo reikšme:');
disp(maz);

%% Papildoma uzduotis

% Masyvo elementu indeksavimas

A = input('Įveskite vektorių A = [...]: ');

B = A(2:2:end);

C = A(1:2:end);
C = C(end:-1:1);

disp('vektorius B yra:');
disp(B);

disp('vektorius C yra:');
disp(C);