@cache = Array.new
def gen_perms(x)
	return [[1,0],[0,1]] if x == 1
	return @cache[x] if @cache[x]
	ret = Array.new
	gen_perms(x-1).each do |row|
		(x+1).times do |y|
			ret.push row[0,y] +[x] + row[y,row.count]
		end
	end
	@cache[x] = ret
end

puts gen_perms(9).sort[999999].inspect
