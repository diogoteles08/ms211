function ok = generateGraph(Lmin, Lmax, s, ytr)

  n = (Lmax - Lmin)*10;

  L(1) = Lmin;
  AC(1) = getAC(L(1), s, ytr);
  TFP(1) = getTFP(L(1), s, ytr);

  for i = 2:n
    L(i) = L(i-1) + 0.1;
    AC(i) = getAC(L(i), s, ytr);
    TFP(i) = getTFP(L(i), s, ytr);
  end

  [max, pos] = max(AC)
  L(pos)
  TFP(pos)


  plot(L, AC, 'o-b', L, TFP, 'o-r');
  xlabel('Limiar');
	ylabel('AC / TFP');
	title('Limiar vs. AC e TFP');
	legend('AC','TFP');

  saveas(1, "graph", "png");

  ok=L(pos);

end
