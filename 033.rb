puts (1..10).reduce { |a, x| a + (1..x).reduce { |b, y| b + (1..y).reduce(1) { |sum, z| sum *= if (z*10+x)*y == (x.to_f*10+y)*z then (x.to_f*10+y)/(z*10+x) else 1 end } } }
