@day = 2
@count = 0
(1901..2000).each do |year|
	(1..12).each do |month|
		@count += 1 if @day%7 == 0
		if month == 2
			@day += 28
			@day += 1 if year%4 == 0 and year%100 != 0 or year%400 == 0
		elsif [4,6,9,11].include? month
			@day += 30
		else
			@day += 31
		end
	end
end
puts @count
