i = 19*20
while true do
	fuck = true
	for x in 1..19 do
		unless i%x == 0
			fuck = false
		end
	end
	if fuck
		puts i
		exit
	end
	i += 19*20
end
