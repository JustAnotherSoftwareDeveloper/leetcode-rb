# @param {Array<Integer>} nums
# @return {Integer}
def single_number(nums)
    hash = {}
    hash.default = 0
    for n in nums do
        hash[n] = hash[n]+1
    end
    hash.each_pair{|key,value|return key if value != 2}
end