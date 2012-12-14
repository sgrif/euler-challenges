require 'mathn'
puts %w{1 2 3 4 5 6 7}.permutation.to_a.map {|a| a.join('').to_i}.sort.reverse.detect{|x| x.prime?}
