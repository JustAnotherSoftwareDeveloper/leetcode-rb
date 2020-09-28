# @param words [Array<String>]
# @return [String]
def string_matching(words)
    words.select{|word| matches(words,word)}
end

# @param words [Array<String>]
# @param word [String]
# return [Boolean]
def matches(words, word)
    words.select{|w| w != word}.any? {|w| w.include? word}
end