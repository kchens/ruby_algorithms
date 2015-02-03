def fact(num)
     if num > 1
        num * fact(num - 1)
     else
        1
     end
end

def fact(num)
    return 1 if num <= 1
    num * fact(num -1)
end

fact(4)