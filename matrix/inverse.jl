function inverse(m::Matrix{Int64})
    if size(m) != (2,2)
        throw(error("not defined"))
    else
        det = m[1]*m[4]-(m[2]*m[3])
#         return (1/det)*m
    end
end

@show inverse([1 2; -3 5])