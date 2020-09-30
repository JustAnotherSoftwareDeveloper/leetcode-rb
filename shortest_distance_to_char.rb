require 'set'
# @param {String} s
# @param {Character} c
# @return {Array<Integer>}
def shortest_to_char(s, c)
    indicies = Set.new
    for i in 0..s.length-1 do
        if (s[i] == c) 
            indicies.add(i)
        end
    end
    distances = []
    for i in 0..s.length-1 do
        distances.push(indicies.entries.map{|index| (index-i).abs()}.min)
    end
    distances
end