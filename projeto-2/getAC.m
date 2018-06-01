function ac = getAC(L, s, ytr)

  m = size(s, 2); % pega o numero de colunas de s
  correto = 0;

  for i = 1:m
    if (L < s(i)) %spam
      if (ytr(i) == 1)
        correto++;
      end
    else % nao spam
      if (ytr(i) == -1)
        correto++;
      end
    end
  end

  ac = correto/m;

end
