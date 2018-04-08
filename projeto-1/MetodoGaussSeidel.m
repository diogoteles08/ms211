function [x,Dr]=MetodoGaussSeidel(A,b,x0,kmax,tau);

%
% Metodo de Gauss-Seidel para resolucao de um sistema linear Ax = b,
% em que A eh uma matriz nao singular com diagonal nao-nula.
%
% Comando:
% [x,Dr]=MetodoGaussSeidel(A,b,x0);
%
% em que as entradas sao: 
%   A - matriz nxn. 
%   b - termo do lado direito. 
%   x0 - aproximacao inicial (default x0=zeros).
%   kmax - numero maximo de iteracoes (default kmax=100).
%   tau - tolerancia (default tau=1.e-6). 
%
% e as saidas sao:
%   x - aproximacao para solucao.
%   Dr - vetor contendo os erros relativos por iteracao.
%

% Definia x0 = [0;0;...;0] se nao for apresentada uma aproximacao inicial.
if nargin<3
  x0 = zeros(size(b));
end 

% Definia kmax=100 se o numero maximo de iteracoes nao for definido.
if nargin<4
  kmax = 100;
end 

% Definia tau=1.e-6 se a tolerancia nao for definida.
if nargin<5
  tau = 1.e-6;
end 

% Defina as matrizes D e M;
L = tril(A);
U = A-L;

% Inicialize;
k = 1; 	% Não é permitido índice 0 para vetores! 
Dr(k) = tau+1;
while (k<=kmax)&(Dr(k)>tau)
  k = k+1;
  x = L\(b-U*x0);
  Dr(k) = norm(x-x0,inf)/norm(x,inf);
  x0 = x;
end

% Excluir a primeira componente de Dr;
Dr=Dr(2:end);
