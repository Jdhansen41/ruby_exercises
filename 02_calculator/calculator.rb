#write your code here
def add(numOne,numTwo)
    numOne += numTwo
    numOne
end

def subtract(numOne,numTwo)
    numOne -= numTwo
    numOne
end

def sum(arr)
    x = 0
    total = 0
    while x < arr.length
        total += arr[x]
        x+=1
    end
    total
end
    
def multiply(arr)
    total = arr[0]
    x = 1
    while x < arr.length
        total *= arr[x]
        x+=1
    end
    total
end

def power(numOne,numTwo)
    total = 1
    x=0
    while x < numTwo
        total*=numOne
        x+=1
    end
    total
end

def factorial(num)
    result = 1
    if num == 0
        result = 0
    end
    else
        while num > 0
            result *= num
            num-=1
        end
        result
end
