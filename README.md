# QR_factor
LLS and orthogonalisation of a matrix A with QR factorisation

Takes a matrix system A of m equations and n unknowns on the left side and column vector b of size m (right side). 
Returns Q, R and x.

Q is a m x n matrix which contains the orthonormal column vectors which span the same 
subspace as A. (Gram-Schmidt process) I actually find this quite useful during some
stages of data pre-processing. More transparent than the conventional MATLAB tools.

R is a square upper triangular n x n matrix containing the length of the orthogonal
projections of the columns in A in the direction of Q.

as a bonus QR will also provide a linear least squares approximation to any Ax = b system
where n > m provided that columns are linearly independent.


