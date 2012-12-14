class Integer
  def pentagon?
    (x = (Math.sqrt(24*self+1)+1.0)/6.0) == x.to_i
  end

  def hexagon?
    (x = (Math.sqrt(8*self+1)+1.0)/4.0) == x.to_i
  end

  def th_triangle
    self*(self+1)/2
  end
end

286.upto Float::INFINITY do |x|
  a = x.th_triangle
  if a.pentagon? and a.hexagon?
    puts a
    exit
  end
end
