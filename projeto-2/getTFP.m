function tfp = getTFP(L, s, ytr)

  m = size(s, 2); % pega o numero de colunas de s
  wspam = 0; % wrong spam
  spam = 0; % real spam

  for i = 1:m
    if (L < s(i)) % detectado spam
      if (ytr(i) == 1) % mas nao eh spam
        wspam++;
      end
    end
    if (ytr(i) == -1) % se eh spam
      spam++;
    end
  end

  tfp = wspam/spam;

end
