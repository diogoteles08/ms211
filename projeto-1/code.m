########################################
% Para iniciar o projeto precisamos determinar qual a matriz de probabilidades 
% de indicacao, ou seja, uma matrix P com Pij tais que Pij corresponde a prob.
% do aluno j indicar o aluno i

# Inicializo n com o numero de linhas
n = size(A, 1)

# Crio um vetor que corresponde a soma das linhas da matrix A. Ou seja, o elemento
# conhecidos_de{i} representa quantas pessoas o aluno i conhece na turma
conhecidos_de = sum(A, 2)

for j=1:n 
    conhecidos_de_j = conhecidos_de(j)
    if conhecidos_de_j > 0
        for i=1:n
            P(i, j) = A(j, i) / conhecidos_de_j      
        end
    else
        # Preenche todas os elementos da coluna j com 1/n
        P(:, j) = 1/n
end  
##### Matriz P criada
########################################  