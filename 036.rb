class String
  def palindrome?
    self[0, (size/2.0).floor].reverse == self[(size/2.0).ceil, size]
  end
end

puts (1..1000000).select { |x| x.to_s.palindrome? && x.to_s(2).palindrome? }.inject(0, :+)
