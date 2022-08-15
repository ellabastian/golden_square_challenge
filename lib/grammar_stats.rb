class GrammarStats

    def initialize() 
        @count = 0         
        @positive = 0
    end
  
    def check?(text) # text is a string
        @count += 1
        if text[0] =~ /[A-Z]/ && text[-1] =~ /[[:punct:]]/ 
            @positive += 1
            return true
        else
            return false    
       end
    end
  
    def percentage_good
        return (@positive / @count.to_f) * 100
    end
end






# class GrammarStats

# def initialize 
#     @count = 0          
#     @positive = 0
# end

# def check?(text) # text is a string
#     @count += 1
#     # return text[0] =~ /[A-Z]/ && text[-1] =~ /[[:punct:]]/  ? true : false
#     if text[0] =~ /[A-Z]/ && text[-1] =~ /[[:punct:]]/ 
#         @positive += 1
#         return true
#     else
#         return false 
#    end
# end

# def percentage_good
#     return (@positive / @count.to_f) * 100
# end
# end
  