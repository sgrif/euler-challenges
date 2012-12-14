@names = gets.gsub(/\"/, "").split(",").sort
@alphabet = ('A'..'Z').to_a
puts @names.each.with_index.inject(0) {|sum, (name,i)| sum + name.chars.inject(0) { |s,c| s+@alphabet.index(c).to_i+1 } * (i+1)}
