R=1000
C=0.001
G=100
R2=10000
R3=5000

D = [(R*C)^2, G*R*C*(R2/R3), G^2];
H1 = tf(-G^2,D);
H2 = tf([-R*C*G, 0], D);
H3 = tf([-(R*C)^2, 0, 0], D);

figure(1)
iopzplot(H1, H2, H3);
% iopzplot(H2);
% iopzplot(H3);

figure(2)
impulse(H1,H2);
% H3 kan användas om man vill jämföra eller simulera systemet teoretiskt.
% impulse(H2);
% impulse(H3);

figure(3)
bode(H1, H2, H3);
legend;
% bode(H2);
% bode(H3);
