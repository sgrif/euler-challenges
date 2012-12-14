class String
  def pandigital?
    (%w{0 1 2 3 4 5 6 7 8 9} - chars.to_a).size == 10 - size
  end
end

set = ('102'..'1000').step(17).to_a.select{|s| s.pandigital?}
%w{13 11 7 5 3 2 1}.each do |x|
  set = set.reduce([]){|a,y| a + ('0'..'9').each_with_object([]){|z,b| b << z+y if (z+y[0,2]).to_i % x.to_i == 0 and (z+y).pandigital?}}
end

puts set.reduce(0){|sum,x| sum + x.to_i}
