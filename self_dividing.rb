# @param {Integer} left
# @param {Integer} right
# @return {Array<Integer>}
def self_dividing_numbers(left, right)
    
    self_divisors = []
    for i in left..right do
        if is_self_dividing(i)
            self_divisors.push(i)
        end 
    end

    self_divisors

end

# @param {Integer} num
# @return Boolean
def is_self_dividing(num)
    current = num
    while current > 0
        toMod = current % 10
        return false if toMod == 0 || num % toMod != 0
        current/=10
    end
    true
end 

puts self_dividing_numbers(3,22)