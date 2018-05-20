function y=RNA(alpha,W,b,x)

% Este código implementa a rede neural artificial usada no Projeto 2;
%
% Entradas: 
%	alpha - vetor de dimensão n x 1, 
%   W - matriz de dimensão n x d,
% 	b - vetor de dimensão n x 1,
%	x - vetor de dimensão d x 1.
%
% Saída:
%	y - score do dado x.
%

y=alpha'*tanh(W*x+b);
