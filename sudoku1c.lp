% Sudoku Solver
%
% Hints:
% For subgrid of size n, subgrids can be identified by labels 1..n*n
% A cell (x,y) can be mapped to the subgrid labeled 1+(((x-1)/n)*n+(y-1)/n)

% Your implementation please...
1 { sudoku(X, Y, N) : N = 1..4 } 1 :- X = 1..4, Y = 1..4.
:- sudoku(X, Y1, N), sudoku(X, Y2, N), Y1 != Y2.
:- sudoku(X1, Y, N), sudoku(X2, Y, N), X1 != X2.
sudoku(X, Y, N) :- initial(X, Y, N).
subgrid(X, Y, 1) :- X = 1..2, Y = 1..2.
subgrid(X, Y, 2) :- X = 1..2, Y = 3..4.
subgrid(X, Y, 3) :- X = 3..4, Y = 1..2.
subgrid(X, Y, 4) :- X = 3..4, Y = 3..4.
#show sudoku/3.
