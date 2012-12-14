class Integer
  def is_nars(pow)
    self == self.to_s.chars.reduce(0) { |sum, y| sum += y.to_i**pow }
  end
end

puts (2..6*9**5).reduce { |sum, x| sum + (x if x.is_nars 5).to_i }
