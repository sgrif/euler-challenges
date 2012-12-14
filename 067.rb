ARGF.each_line do |line|
	if @last_line.nil?
		@last_line = line.split(" ")
	else
		@last_line = line.split(" ").collect.with_index do |x, i|
			x.to_i + [@last_line[[i-1, 0].max].to_i, @last_line[[i, @last_line.count].min].to_i].max
		end
	end
end

puts @last_line.max
