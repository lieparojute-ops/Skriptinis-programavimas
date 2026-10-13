
function [tg, ctg] = graftancotan(x)
% GRAFTANCOTAN Apskaiciuoja tangenta ir kotangenta.
%   [tg, ctg] = graftancotan(x) grazina reiksmes.
%   graftancotan(x) nubraizo funkciju grafikus.
%   x - vektorius-eilute.

%% 1. Funkcijos argumentu skaiciaus nustatymas

if nargin ~= 1
    error('Reikia ivesti viena argumenta - vektoriu-eilute.');
end

if ~isnumeric(x) || ~isvector(x) || size(x, 1) ~= 1
    error('Argumentas turi buti skaiciu vektorius-eilute.');
end


tg = tan(x);
ctg = cot(x);


if nargout == 0
    figure;

    subplot(2, 1, 1);
    plot(x, tg, 'b-');
    ylim([-10 10]);
    grid on;
    xlabel('x');
    ylabel('tg(x)');
    title('Tangento grafikas');

    subplot(2, 1, 2);
    plot(x, ctg, 'r-');
    ylim([-10 10]);
    grid on;
    xlabel('x');
    ylabel('ctg(x)');
    title('Kotangento grafikas');
end

end

% Liepa Rojute EEf-25/2
% 2026-10-13
% Papildoma uzduotis (10 variantas)