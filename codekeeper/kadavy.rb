class Guy
	def thinks(option)
	end
	def talks(wants)
	end
	def sit
	end
end
class ass
	def broken
	end
end
Scrub = Guy.new
Scrub.thinks(fly)
Buster = Guy.new
buster.talks(wants)
begin
	buster.sit 
rescue Exception e
	ass.broken()
end