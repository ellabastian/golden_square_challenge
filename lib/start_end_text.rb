def grammar_checker?(text)
    text[0] =~ /[A-Z]/ && text[-1] =~ /[[:punct:]]/  ? true : false
end


    # if text[0] =~ /[A-Z]/ && text[-1] =~ /[[:punct:]]/ 
    #     return true
    # else
    #     return false
    # end