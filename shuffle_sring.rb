# @param {String} s
# @param {Array<Integer>} indices
# @return {String}
def restore_string(s, indices)
    chars = Array.new(s.length)
    for i in 0..s.length-1 do
        chars[indices[i]] = s[i]
    end
    chars.join("")
end