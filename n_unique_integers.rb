# @param {Integer} n
# @return {Integer[]}
def sum_zero(n)
  return [0].concat(sum_zero(n-1)) if n.odd?
  
  solution = []
  for num in 1..n/2 do
    solution.push(num)
    solution.push(num*-1)
    solution
  end
  solution
end

puts sum_zero(19)