# @param {String} license_plate
# @param {Array<String>} words
# @return {String}
def shortest_completing_word(license_plate, words)
    license_char = license_plate.gsub(/[0-9]/,'').delete(" ").downcase
    word_hash = count_word(license_char)
    words.select{|word| completes_word(word,word_hash)}.sort{|a,b| a.length <=> b.length}[0]
end

# @param {String} word
# @return  {Hash}
def count_word(word)
    hash = Hash.new
    hash.default = 0
    for w in word.chars do  
        hash[w] = hash[w]+1
    end 
    hash
end 

# @param {String} src
# @param {Hash} target
# @return {Boolean}
def completes_word(src,target)
    new_target = target.clone
    for w in src.chars do
        if new_target[w] != nil
            new_target[w] = new_target[w]-1
        end
    end 

    for i in new_target.each_value do
        return false if i > 0
    end
    true
end

puts shortest_completing_word("1s3 PSt",["step","steps","stripe","stepple"])