# @param {Array<Integer>} a
# @param {Integer} k
# @return {Integer}
def smallest_range_i(a, k)
    max = a.max
    min = a.min
    diff = max-min
    return 0 if diff <= k*2
    return diff-(k*2)
end