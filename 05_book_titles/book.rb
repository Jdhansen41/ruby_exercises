#Since we dont initialize book instances with a title, we're using an instance variable 
#myBook = Book.new ----myBook.title = "Moby Dick"


class Book
    #Accepts a title name when myBook.title = "" is called
    def title=(book_name)
        #Assign parameter to instance variable
        @this_book_name = book_name
    end
    
    def title
        #Where algorithm is
        lowers = ["and", "the", "an", "a", "in", "of"]
        str = @this_book_name.split
        
        #Block to loop through array and alter
        str.collect! { |element|
        if (lowers.include? element) == false #If array doesn't include array element, capitalize
            element.capitalize
        else
            #Else, simply return unaltered element
            element
        end
        }
        str = str.join(" ")
        #Line below catches all titles that start with the words we set up to not capitalize
        new_string = str.slice(0,1).capitalize + str.slice(1..-1)
        new_string
    end
end
