% MACM316 - Computing Assignment 3 part c)
% compute the error of your algorithm
% and plot the error against k for the same range as in part b)
% you might want to use a log scale for the y-axis.
load('CA3matrix.mat');
k = 5:5:150;
expA = expm(A);

for j=1:length(k)
    j
    matrix = eye(size(A));
    expAk = zeros(500,500);
    for i=1:k(j)
        i
        expAk = expAk + matrix;
        matrix = (A*matrix)/i;
    end
    err(j) = norm(expA - expAk);
end

semilogy(k,err)
xlabel('k');
ylabel('Error');
title('Error VS k');
grid on;