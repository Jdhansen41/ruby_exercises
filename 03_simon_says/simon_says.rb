#write your code here
def echo(word)
    word
end 

def shout(word)
    word.upcase
end 

def repeat(word, i=2)
    str = ""
    i.times {str+=(word+" ")}
    str.chop!
    str
end
        
def start_of_word(word, x)
   if x == 1
       str = word[0]
    else
        x = x-1
        str = word[0..x]
    end
    str
end

def first_word(word)
    str = word.split(" ")[0]
    str
end

def titleize(word)
    str = word.split
    str.collect! { |element|
        if element!= "and" && element!= "the" && element!= "over"
            element.capitalize
        else
            element
        end
    }
    str = str.join(" ")
    new_string = str.slice(0,1).capitalize + str.slice(1..-1)
    new_string

end