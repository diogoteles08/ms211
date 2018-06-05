function tfp = getTFP(L, s, y)

  m = size(s, 2); % pega o numero de colunas de s
  wspam = 0; % wrong spam
  nspam = 0; % not spam

  for i = 1:m
    if (y(i) == -1) % se nao eh spam
      nspam++;
      if (L < s(i)) % mas foi detectado como spam
        wspam++;
      end
    end
  end

  tfp = wspam/nspam;
end
