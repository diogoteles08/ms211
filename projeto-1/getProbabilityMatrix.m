function P = getProbabilityMatrix(A, n)
    % Crio um vetor que corresponde a soma das linhas da matrix A. Ou seja, o elemento
    % conhecidos_de(i) representa quantas pessoas o aluno i conhece na turma
    conhecidos_de = sum(A, 2);
    
    for j = 1:n
        conhecidos_de_j = conhecidos_de(j);
        if conhecidos_de_j > 0
          % Copia a linha j de A dividida pelo escalar conhecidos_de_j
          % para a coluna j de P 
          P(:, j) = A(j, :) / conhecidos_de_j             
        else
            % Preenche todas os elementos da coluna j com 1/n
            P(:, j) = 1/n
        end
    end
end