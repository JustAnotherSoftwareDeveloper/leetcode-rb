# @param {Array<Integer>} a
# @return {Array<Integer>}
def sort_array_by_parity(a)
    evens = a.select{|num| num.even?}
    odds = a.select{|num| num.odd?}
    evens.concat(odds)
end