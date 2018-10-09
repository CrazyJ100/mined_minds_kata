def mmarray()
	mmarray = []
end

def buz (num, mmarray)
	if num %15 == 0
		mmarray<< "mined minds"
	elsif num % 5 == 0
		mmarray<< "minds"
	elsif  
		num % 3 == 0
		mmarray<< "mined"
	else 
		mmarray<< num
	end
end

num = 1
mmarray = []

until num == 100
	buzz (num, mmarray)
	num += 1
	if num == 100
		print mmarray[0..100]
	end
end
			
	
