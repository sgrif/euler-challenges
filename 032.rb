require 'set'

class String
  def is_pandigital
    self.chars.sort == ["1", "2", "3", "4", "5", "6", "7", "8", "9"]
  end
end

ret = Set.new
2.upto 100 do |x|
  123.upto 9876 do |y|
    ret << x*y if (x.to_s + y.to_s + (x*y).to_s).is_pandigital
  end
end

puts ret.to_a.reduce :+
