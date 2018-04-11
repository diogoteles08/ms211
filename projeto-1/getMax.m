function [representante, vice] = getMax(RA, x)

[~, xsort] = sort(x); % ordena os indices por valor crescente
representante = xsort(end); % pega o indice do maior valor
vice = xsort(end-1); % pega o indice do 2 maior valor

disp([''])
disp(['O REPRESENTANTE escolhido foi: '])
disp(['Índice: ' num2str(representante) ', RA: ' num2str(RA{representante}) ', Representatividade: ' num2str(x(representante))])
disp([''])
disp(['O VICE-REPRESENTANTE escolhido foi: '])
disp(['Índice: ' num2str(vice) ', RA: ' num2str(RA{vice}) ', Representatividade: ' num2str(x(vice))])

end
