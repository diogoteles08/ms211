function alpha = getAlphaVector(Xtr, ytr, G)
  % Inicializa os componentes do sistema linear
  A = (G*G');
  b = G*ytr';
  
  alpha = A\b;
end