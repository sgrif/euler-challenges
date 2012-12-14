class Numeric
  def factors
    return [] if self == 1
    factor = (2..self).find{|x| self%x == 0}
    ([factor] + (self/factor).factors).uniq
  end
end

count = 1
stop = 4
x = 2*3*5*7
while count != stop
  x += 1
  if x.factors.count == stop then count += 1 else count = 0 end
  puts x if x%1000 == 0
end
puts x
