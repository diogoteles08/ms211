load DadosTreinamento.mat
load DadosTeste.mat

% Constantes definidas no enunciado
d = 57;
m = 3500;
n = 1000;

% Gera os vetores definidos no enunciado
W = randn(n, d);
b = randn(n, 1);
G = tanh(W*Xtr+b);

% Gera o vetor ALPHA
alpha = getAlphaVector(Xtr, ytr, G);

% Define a rede neural para os Dados de Treinamento
s = RNA(alpha, W, b, Xtr);

% Calcula o AC e o TFP para L = -2, 0 e 2
L = -2
ac = getAC(L, s, ytr)
tfp = getTFP(L, s, ytr)

L = 0
ac = getAC(L, s, ytr)
tfp = getTFP(L, s, ytr)

L = 2
ac = getAC(L, s, ytr)
tfp = getTFP(L, s, ytr)

% Gera o grafico e recebe o melhor limiar para TFPmax 0.01
Lbest = generateGraph(-3, 3, s, ytr, 0.01);

% Calcula o AC e o TFP do Conjunto de Teste com o melhor limiar
% definido no Conjunto de Treinamento
L = Lbest
s = RNA(alpha, W, b, Xte);
ac = getAC(L, s, yte)
tfp = getTFP(L, s, yte)
