function Lbest = generateGraph(Lmin, Lmax, s, ytr, TFPmax)

  % Define o numero de pontos no grafico atraves dos limites de L
  n = (Lmax - Lmin)*10;

  % Cria os vetores de L, AC, e TFP para serem usados no grafico
  L(1) = Lmin;
  AC(1) = getAC(L(1), s, ytr);
  TFP(1) = getTFP(L(1), s, ytr);
  for i = 2:n
    L(i) = L(i-1) + 0.1;
    AC(i) = getAC(L(i), s, ytr);
    TFP(i) = getTFP(L(i), s, ytr);
  end

  % Obtem o L que tem o melhor AC com o TFP no max o valor de lim
  for i=1:n
    if TFP(i) < TFPmax
      pos = i;
      break;
    end
  end

  % Imprime os valores para o L encontrado anteriormente
  L(pos)
  AC(pos)
  TFP(pos)

  % Gera o grafico atraves dos vetores
  plot(L, AC, 'o-b', L, TFP, 'o-r');
  xlabel('Limiar');
	ylabel('AC / TFP');
	title('Limiar vs. AC e TFP');
	legend('AC','TFP');

  saveas(1, "graph", "png");

  % Retorna o L ideal obtido atraves do TFPmax
  Lbest=L(pos);

end
