w = logspace(-1, 5, 61);      % Frekvensvektor
n = 1:2:21;                   % Udda termer: 1, 3, ..., 21
t = linspace(0,2,100);
FourierExp = 0.5;

for i = 1:length(n)
    k = n(i);   % hämta aktuellt udda tal
    FourierExp = FourierExp + (2 / (pi * k)) * sin(2 * pi * k * t);
end
plot(t, FourierExp);