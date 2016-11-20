function [Q, R, x] = qr_factor(A,b)


Q = zeros(size(A));

R = zeros(size(A,2),size(A,2));

n_A = size(A,2);

q = A(:,1) ./ norm(A(:,1));

Q(:,1) = q;

R(1,1) = q' * A(:,1);

for i = 2:n_A

R(1:(i-1),i) = Q(:,1:(i-1))'*A(:,i);

a_perp = A(:,i) - Q(:,1:(i-1)) * R(1:(i-1),i);

R(i,i) = norm(a_perp);

Q(:,i) = a_perp ./ R(i,i);

end

x = zeros(size(A,2),1);

c = Q'*b;

for m = length(x):-1:1

x(m) = (c(m) - (R(m,m:end) * x(m:end))) / R(m,m);

end 