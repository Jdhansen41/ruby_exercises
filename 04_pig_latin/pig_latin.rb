#write your code here
def translate(str)
    translated =[]
    words = str.split
    
    words.each { |item| translated << pigLatin(item) #<< means add the result to end of array
    }
    
    translation = translated.join(" ")
end
    
    def pigLatin(word)
        res = case word
            #Does it start with a vowel?
        when /^[aeiouy]/
            word+"ay"
        #Consider qu, squ, and one or more consonants
        when /^(qu+)(.*)/,/^(squ+)(.*)/,/^([^aeiouy]+)(.*)/
            $2 + $1 + "ay"
            #$2 is the 2nd condition matched, $1 is the first condition matched
        #If no match, return word
        else
            word
        end
    end

#Credit to https://github.com/jonyoowa for certain sections of solution