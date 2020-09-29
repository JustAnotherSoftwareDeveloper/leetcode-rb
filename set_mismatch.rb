require 'set'
# @param {Array<Integer>} nums
# @return {Array<Integer>}
def find_error_nums(nums)
    error_num = 0;
    missing_num = 0;

    max = nums.max
    # Set
    hash = Set.new
    for i in nums do
        if hash.include?(i)
            error_num = i
        end 
        hash.add?(i)
    end

    for i in 1..max do
        if !hash.include?(i)
            missing_num = i
        end
    end 

    if missing_num == 0
        missing_num = max+1
    end

    [error_num,missing_num]
end

puts find_error_nums([2,2])