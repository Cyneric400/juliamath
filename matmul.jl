# First started in MATH-280 class, mid-Feb 2024
# Getting loops together: 2/20/2024

########
# Sources:
# https://www.geeksforgeeks.org/get-array-dimensions-and-size-of-a-dimension-in-julia-size-method/
# https://www.juliawiki.com/wiki/Matrices_in_Julia
# https://www.juliasos.com/data/the-best-way-to-convert-vector-into-matrix-in-julia/
# https://www.mathsisfun.com/algebra/matrix-multiplying.html
# https://docs.julialang.org/en/v1/base/base/#Base.error

function matmulisvalid(n1::Int, n2::Int)::Bool
    return n1 == n2
end


function matmul(A::Matrix{Int64}, B::Matrix{Int64})::Matrix{Int64}
    m = size(A)[1]
    n = size(B)[1]
    p = size(B)[2]
    if !(matmulisvalid(size(A)[2], n))
        throw(error("Invalid matrix sizes"))
    end
    result = zeros(m,p)
    for i in 1:m
        for j in 1:p
            for k in 1:n
                result[i,j] += A[i,k] * B[k,j]
#                 @show i, j, k
#                 @show A[i,k]
#                 @show B[k,j]
            end
        end
    end
    return result
end

A = [1 0; 3 2; -5 1;]
B = [6 1 3 4; 3 2 3 4; 10 23 423 1]
# B = reshape(B, 2, 1)
# A = [1 2; 3 4]
# B = [5 6; 7 8]

@show matmul(A,B)
