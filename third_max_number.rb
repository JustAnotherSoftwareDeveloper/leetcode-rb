require 'set'
# @param {Array<Integer>} nums
# @return {Integer}
def third_max(nums)
    trueMax = nums.max
    newArr = []
    for n in nums do
        if n != trueMax
            newArr.push(n)
        end 
    end
    return trueMax if newArr.length == 0
    max = newArr.max
    secondArr = []
    for n in newArr do
        if n != max
            secondArr.push(n)
        end
    end
    return trueMax if secondArr.length == 0
    secondArr.max
end

puts third_max([2,2,3,1])