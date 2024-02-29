# From class 2/29/24
function factorial(x::Int)
    fact = x
    if x == 1
        return x
    else
        fact *= factorial(x-1)
    end
end

@show factorial(4)