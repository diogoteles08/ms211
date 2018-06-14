function alpha = getAlphaVector(Xtr, ytr, G)
  % Inicializa os componentes do sistema linear
  A = (G*G');
  C = chol(A); % obtem A fatorado por Cholesky e salva em C
  b = G*ytr';

  alpha = C\(C'\b); % resolve as substituicoes da matriz de Cholesky
end
