load DadosTreinamento.mat

% Constantes definidas no enunciado
d = 57;
m = 3500;
n = 1000;

W = randn(n, d);
b = randn(n, 1);

G = tanh(W*Xtr+b);

alpha = getAlphaVector(Xtr, ytr, G);