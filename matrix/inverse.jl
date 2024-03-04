# Create a fraction class based off of CPTR124 code to be able to write these out effectively
struct Fraction
end



function inverse(m::Matrix{Int64})
    if size(m) != (2,2)
        throw(error("not defined"))
    else
        det = m[1]*m[4]-(m[2]*m[3])
        if det != 0
            swappedmat = [m[4] -m[2]; -m[3] m[1]]
            return swappedmat * (1/det)
        end
    end
end

@show inverse([1 2; -3 5])