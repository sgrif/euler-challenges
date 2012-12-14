require 'mathn'
class Integer
  def truncatable_prime?
    (1..to_s.size-1).each { |x| return false unless to_s[x..-1].to_i.prime? and to_s[0..-(x+1)].to_i.prime? }
  end
end


truncatable_primes = Array.new
Prime.each do |x|
  if x > 10
    truncatable_primes << x if x.truncatable_prime?
    break if truncatable_primes.size == 11
  end
end
puts truncatable_primes.inspect
puts truncatable_primes.inject(:+)
