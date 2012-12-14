class Integer
  @@sdc ||= Array.new
  def sum_divisor
    @@sdc[self] ||= (2..Math.sqrt(self)).reduce(1) {|sum, x| sum + (x+self/x if self%x == 0).to_i}
  end
end

puts (1..10000).reduce(0) {|sum, x| (sum + x if x.sum_divisor != x and x == x.sum_divisor.sum_divisor) || sum }
