#Simple methods to convert temperatures
def ftoc(num)
    newNum = (num - 32) * 5.0/9.0
    newNum
end

def ctof(num)
    newNum = (num * 9.0/5.0) + 32
    newNum
end