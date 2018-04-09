load DadosProjeto1.mat

% Questao 1
disp(['QUESTÃO 1'])

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
v = getProportionVector(A, n);

P *= a;
P = eye(n) - P;

v *= 1 - a;

% Agora já podemos dizer que Px = v

[x,Dr]=MetodoGaussSeidel(P,v);

disp(['Erro relativo: ' num2str(Dr(end))])
disp([''])

[representante, vice] = getMax(RA, x);
disp([''])
disp(['O representante foi indicado ' num2str(sum(A(:,representante))) ' vezes'])
disp(['O representante indicou ' num2str(sum(A(representante,:))) ' amigos'])
disp([''])
disp(['O vice-representante foi indicado ' num2str(sum(A(:,vice))) ' vezes'])
disp(['O vice-representante indicou ' num2str(sum(A(vice,:))) ' amigos'])
disp([''])
disp(['O mais indicado recebeu ' num2str(max(sum(A))) ' indicações']) % maximo da soma das linhas (i=27)
disp(['Quem tem mais amigos fez ' num2str(max(sum(A,2))) ' indicações']) % maximo da soma das colunas (i=59)

% Questao 2
disp([''])
disp(['QUESTÃO 2'])

a = 0.1

v = zeros(n,1);
v(36) = 0.6;
v(43) = 0.4;
v *= 1-a;

[x,Dr]=MetodoGaussSeidel(P,v);

disp(['Erro relativo: ' num2str(Dr(end))])
disp([''])

[representante, vice] = getMax(RA, x);
