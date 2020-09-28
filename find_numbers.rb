# frozen_string_literal: true

# @param {Integer[]} nums
# @return {Integer}
def find_numbers(nums)
  nums
    .map { |num| find_number(num) }
    .select(&:even?)
    .count
end

# @param{Integer} num
# @return {Integer}
def find_number(num)
  return 1 if num.zero?

  length = 0
  modified_num = num
  while modified_num.positive?
    length += 1
    modified_num /= 10
  end
  length
end
