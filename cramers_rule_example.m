function solution = cramers_rule_example()
    % Coefficient matrix A
    A = [3, -1, -1; -1, 2, -1; -1, -1, 3];
    
    % Constant matrix B
    B = [0; -10; 0];
    
    % Use Cramer's Rule to find the solution
    solution = cramers_rule(A, B);
    
    % Display the solution
    disp('Solution:');
    disp(solution);
end

function solution = cramers_rule(A, B)
    % Check if A is a square matrix
    [m, n] = size(A);
    if m ~= n
        error('Coefficient matrix must be square');
    end

    % Check if B has the correct size
    [p, q] = size(B);
    if p ~= m || q ~= 1
        error('Constant matrix must be of appropriate size');
    end

    % Calculate the determinant of A
    detA = det(A);
    
    % Initialize the solution matrix
    solution = zeros(m, 1);

    % Calculate solutions using Cramer's Rule
    for i = 1:m
        % Replace the i-th column of A with the constant matrix B
        Ai = A;
        Ai(:, i) = B;
        
        % Calculate the determinant of the modified matrix
        detAi = det(Ai);
        
        % Calculate the solution for the i-th variable
        solution(i) = detAi / detA;
    end
end
