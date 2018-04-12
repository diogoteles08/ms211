function [x] = eliminacaoGauss(A, b);  
  n = size(A, 1);
  
  %% Prepara a matrix
  for j = 1:n
    [~, maxIndex] = max(A(:, j));
    tmpA = A(:, maxIndex);  tmpB = b(maxIndex);    
    A(:, maxIndex) = A(:, j);  b(maxIndex) = b(j);    
    A(:, j) = tmpA;  b(j) = tmpB;    
    
    for i = j+1:n
      m = A(i,j)/A(j, j);
      A(i,:) -= A(j,:) * m;
      b(i) -= b(j) * m;
    end
  end
  
  % calcula x
  for i = n:-1:1
    m = b(i);
    for j = n:-1:i+1
      m -= x(j)*A(i,j);
    end
    x(i) = m / A(i,i);
  end
end
    