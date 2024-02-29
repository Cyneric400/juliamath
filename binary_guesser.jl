# Game for guessing binary number scores

function findval(max::Int)::Int
    for i in 1:max
        print(2^i)
    end
    return 2^4
end

function main(max::Int)
    score = 0
    game_loop = true
    while game_loop
        questionval = findval(max)
        println("Guess the power of two that this number is: ")
        # show questionval
        # get input
        # quits if userval is 'q'
        if userval == questionval
            println("You got it correct!")
            println("Your score is: ")
            # show score
        else
            println("Nope, that's incorrect.'")
            println("Your score is: ")
            # show score
        end
    end
    
end

main(6)