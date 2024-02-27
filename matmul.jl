# First started in MATH-280 class, mid-Feb 2024
# Getting loops together: 2/20/2024
# Finished first draft: 2/22/2024

function matmul(A::Matrix{Int64}, B::Matrix{Int64})::Matrix{Int64}
    m = size(A)[1]
    n = size(B)[1]
    p = size(B)[2]
    if size(A)[2]!=n
        throw(error("Invalid matrix sizes"))
    end
    result = zeros(m,p)
    for i in 1:m
        for j in 1:p
            for k in 1:n
                result[i,j] += A[i,k] * B[k,j]
            end
        end
    end
    return result
end

A = [1 0; 3 2; -5 1;]
B = [6 1;]
B = reshape(B, 2, 1)

C = [2 3; 4 5; 6 7;]
D = [0 1; 2 3]
@show matmul(A,B)
@show matmul(C,D)

matrices = []
for i in 1:100
    randm1 = rand(3,3)
end

