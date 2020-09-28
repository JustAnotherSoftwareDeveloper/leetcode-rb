# @param {Integer[]} a
# @return {Integer[]}
def sorted_squares(a)
    a.map{|num| num*num}.sort
end