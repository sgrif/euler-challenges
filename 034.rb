class Integer
  @@cache = Array.new
  def fact
    @@cache[self] ||= (2..self).inject(1, :*)
  end

  def fact_dig
    self.to_s.chars.reduce(0) {|sum, x| sum + x.to_i.fact}
  end

  def eq_fact_dig
    self == self.fact_dig
  end
end

puts (3..41000).reduce(0) {|sum, x| sum + (x if x.eq_fact_dig).to_i}
