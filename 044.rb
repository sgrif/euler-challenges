class Integer
  def pentagon?
    (x = (Math.sqrt(24*self+1)+1.0)/6.0) == x.to_i
  end

  def th_pentagon
    (self*(3*self-1))/2
  end
end

2.upto Float::INFINITY do |x|
  a = x.th_pentagon
  (x-1).downto 1 do |y|
    b = y.th_pentagon
    if (a+b).pentagon? and (a-b).abs.pentagon?
      puts (b-a).abs
      exit
    end
  end
end
