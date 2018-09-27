# #Practice 9/27/18
# def my_info(name,address,state)
# 	puts"name:#(name)"
# 	puts"address:#(address)"
# 	puts"phone:#(state)"
# end

# my_info("Jeremy,16183 clay highway,WV")
# my_info("Michaela,23456 maple street,MD")
# my_info("Jacob,09876 elm street,TX")


def matching(arg1,arg2)
	if arg1 == arg2
		puts "They Match"
	else
		puts "They Don't Match"
	end
end

matching(3+4,12-5)

matching(2+4,12-6)

matching("1",1.to_s)
