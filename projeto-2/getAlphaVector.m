function alpha = getAlphaVector(Xtr, ytr, G)
  % Inicializa os componentes do sistema linear
  A = (G*G');
  C = chol(A);
  b = G*ytr';

  alpha = C\(C'\b);
end
