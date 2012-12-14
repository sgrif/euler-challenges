class PascalsTriangle
	def initialize
		@cache = Hash.new
	end

	def value_at(r, c)
		(c <= 0 or r <= 0) ? 1 : value_at(r, c-1) * ((r+1-c).to_f/c)
	end
end

grid = PascalsTriangle.new
puts grid.value_at(40, 20)
