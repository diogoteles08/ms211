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

[x,~]=MetodoGaussSeidel(P,v);
con = cond(P);
rcon = rcond(P);
r_abs = norm(v - P*x, inf);
r_rel = norm(v - P*x, inf)/norm(v, inf);
e_min = rcon * r_rel;
e_max = con * r_rel;
disp([''])
disp(['Para o cálculo usando o método de Gauss Seidel:'])
disp(['Número de condicionamento da matriz P: ' num2str(con)])
disp(['Inverso do número de condicionamento da matriz P: ' num2str(rcon)])
disp(['Resíduo absoluto: ' num2str(r_abs)]) % norma inf, faz abs e max
disp(['Resíduo relativo: ' num2str(r_rel)])
disp(['Erro relativo mínimo: ' num2str(e_min)])
disp(['Erro relativo máximo: ' num2str(e_max)])

[x] = eliminacaoGauss(P, v)';
con = cond(P);
rcon = rcond(P);
r_abs = norm(v - P*x, inf);
r_rel = norm(v - P*x, inf)/norm(v, inf);
e_min = rcon * r_rel;
e_max = con * r_rel;
disp([''])
disp(['Para o cálculo usando elmininação de Gauss com pivoteamento parcial:'])
disp(['Número de condicionamento da matriz P: ' num2str(con)])
disp(['Inverso do número de condicionamento da matriz P: ' num2str(rcon)])
disp(['Resíduo absoluto: ' num2str(r_abs)]) % norma inf, faz abs e max
disp(['Resíduo relativo: ' num2str(r_rel)])
disp(['Erro relativo mínimo: ' num2str(e_min)])
disp(['Erro relativo máximo: ' num2str(e_max)])

[representante, vice] = getMax(RA, x);
disp([''])
disp(['O representante foi indicado ' num2str(sum(A(:,representante))) ' vezes'])
disp(['O representante fez ' num2str(sum(A(representante,:))) ' indicações'])
disp([''])
disp(['O vice-representante foi indicado ' num2str(sum(A(:,vice))) ' vezes'])
disp(['O vice-representante fez ' num2str(sum(A(vice,:))) ' indicações'])
disp([''])
disp(['O mais indicado recebeu ' num2str(max(sum(A))) ' indicações']) % maximo da soma das linhas (i=27)
disp(['Quem indicou mais pessoas fez ' num2str(max(sum(A,2))) ' indicações']) % maximo da soma das colunas (i=59)

% Questao 2
disp([''])
disp(['QUESTÃO 2'])

a = 0.1

v = zeros(n,1);
v(36) = 0.6;
v(43) = 0.4;
v *= 1-a;

[x,~]=MetodoGaussSeidel(P,v);
con = cond(P);
rcon = rcond(P);
r_abs = norm(v - P*x, inf);
r_rel = norm(v - P*x, inf)/norm(v, inf);
e_min = rcon * r_rel;
e_max = con * r_rel;
disp([''])
disp(['Para o cálculo usando o método de Gauss Seidel:'])
disp(['Número de condicionamento da matriz P: ' num2str(con)])
disp(['Inverso do número de condicionamento da matriz P: ' num2str(rcon)])
disp(['Resíduo absoluto: ' num2str(r_abs)]) % norma inf, faz abs e max
disp(['Resíduo relativo: ' num2str(r_rel)])
disp(['Erro relativo mínimo: ' num2str(e_min)])
disp(['Erro relativo máximo: ' num2str(e_max)])

[x] = eliminacaoGauss(P, v)';
con = cond(P);
rcon = rcond(P);
r_abs = norm(v - P*x, inf);
r_rel = norm(v - P*x, inf)/norm(v, inf);
e_min = rcon * r_rel;
e_max = con * r_rel;
disp([''])
disp(['Para o cálculo usando elmininação de Gauss com pivoteamento parcial:'])
disp(['Número de condicionamento da matriz P: ' num2str(con)])
disp(['Inverso do número de condicionamento da matriz P: ' num2str(rcon)])
disp(['Resíduo absoluto: ' num2str(r_abs)]) % norma inf, faz abs e max
disp(['Resíduo relativo: ' num2str(r_rel)])
disp(['Erro relativo mínimo: ' num2str(e_min)])
disp(['Erro relativo máximo: ' num2str(e_max)])

[representante, vice] = getMax(RA, x);
disp([''])
disp(['O representante foi indicado ' num2str(sum(A(:,representante))) ' vezes'])
disp(['O representante fez ' num2str(sum(A(representante,:))) ' indicações'])
disp([''])
disp(['O vice-representante foi indicado ' num2str(sum(A(:,vice))) ' vezes'])
disp(['O vice-representante fez ' num2str(sum(A(vice,:))) ' indicações'])
