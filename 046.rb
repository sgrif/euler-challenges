require 'mathn'
class Integer
  def square?
    (x = Math.sqrt(self)) == x.to_i
  end
end

x = 33
stop = false
until stop
  x += 2
  stop = true
  Prime.each(x) {|y| stop = false if ((x-y)/2).to_i.square?; break unless stop}
end
puts x
