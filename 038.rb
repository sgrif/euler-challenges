class String
  def pandigital?
    chars.to_a.sort == %w{1 2 3 4 5 6 7 8 9}
  end
end

class Integer
  def concat_products(x)
    (1..x).inject('') { |ret, y| ret + (self*y).to_s }
  end
end

greatest = 0
(1..10000).each do |num|
  x = 0
  while (y = num.concat_products(x)).size < 10
    greatest = y.to_i if y.to_i > greatest and y.pandigital?
    x += 1
  end
end
puts greatest
