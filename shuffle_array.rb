# @param {Array<Integer>} nums
# @param {Integer} n
# @return {Array<Integer>}
def shuffle(nums, n)
    shuffled = []
    for i in 0..n-1 do
        pX = i
        pY = (n)+i
        shuffled.push(nums[pX])
        shuffled.push(nums[pY])
    end
    shuffled
end

puts shuffle([2,5,1,3,4,7],3)