class Numeric
  def make_change(coins)
    return 1 if coins == [1] || self == 0
    coins.reduce(0) do |sum, coin|
      x = self - coin > 0 ? (self - coin).make_change(coins) : 1 if self - coin >= 0
      coins -= [coin]
      sum + x.to_i
    end
  end
end

puts 200.make_change [200, 100, 50, 20, 10, 5, 2, 1]
