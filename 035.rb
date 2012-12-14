require 'mathn'

class Integer
  def is_circular_prime
    self.to_s.chars.each { |x| return false if x.to_i % 2 == 0 } unless self == 2
    self.to_s.size.times { |x| return false unless self.to_s.chars.to_a.rotate(x).join('').to_i.prime? }
  end
end

x = 0
Prime.each(1000000) { |y| x += 1 if y.is_circular_prime }
puts x
