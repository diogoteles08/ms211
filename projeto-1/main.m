load DadosProjeto1.mat

% Inicializo n com o numero de linhas
n = size(A, 1);

% Para iniciar o projeto precisamos determinar qual a matriz de probabilidades 
% de indicacao, ou seja, uma matrix P com Pij tais que Pij corresponde a prob.
% do aluno j indicar o aluno i
P = getProbabilityMatrix(A, n);

%%%%% Variáveis de amortecimento
% Inicializamos a constante de amortecimento (alpha)
a = 0.85

% Inicializa o vetor de proporcionalidade
v = getProportionVector(A, n)
