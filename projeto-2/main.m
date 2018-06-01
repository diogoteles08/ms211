load DadosTreinamento.mat
load DadosTeste.mat

% Constantes definidas no enunciado
d = 57;
m = 3500;
n = 1000;

W = randn(n, d);
b = randn(n, 1);

G = tanh(W*Xtr+b);

alpha = getAlphaVector(Xtr, ytr, G);

s = RNA(alpha, W, b, Xtr);

L = -2
ac = getAC(L, s, ytr)
tfp = getTFP(L, s, ytr)

L = 0
ac = getAC(L, s, ytr)
tfp = getTFP(L, s, ytr)

L = 2
ac = getAC(L, s, ytr)
tfp = getTFP(L, s, ytr)

Lbest = generateGraph(-3, 3, s, ytr);

L = Lbest 
s = RNA(alpha, W, b, Xte);
ac = getAC(L, s, yte)
tfp = getTFP(L, s, yte)
