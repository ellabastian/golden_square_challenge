def reading_time(text)
    words = text.split(" ").length
    words_per_minute = words / 200.to_f
    return words_per_minute.ceil         
end