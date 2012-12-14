ret = 0
(8..1000).reduce do |greatest, p|
  x = (1..p/2).reduce(0) { |sum, a| sum + (1 if (p*(p-2*a)) % (2*(p-a)) == 0).to_i }
  ret = p if x > greatest
  [greatest, x].max
end
puts ret
