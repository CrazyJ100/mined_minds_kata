def winning_bash(my_num, bash_num)
	arr1 = []
	my_num.each do |item|
		puts item
	if bash_num.include?(item)
		arr1 << item
	end
end
	return arr1
end

def offbyonenumber(my_number, bash_numbers)
    counter = 0
    x = 0
    arr1 = []
    my_number.each do |num|
        bash_numbers.each do |bash|
            num.length.times do
                if bash[x] == num[x]
                        counter += 1
                    if counter == num.length - 1
                        arr1<< num
                        counter = 0
                    end 
                end
                x += 1
            end
        end
    end
    arr1.uniq!
    p arr1
    return arr1
end

# def off_by_one_number(my_num, bash_num)
# 	counter = 0
# 	x = 0
# 	arr1 = []
# 	my_num.each do |num|
# 		bash_num.each do |bash|
# 			num.length.times do
# 				# p "bash  #{bash[x]}"
# 				# p "num  #{num[x]}"
# 				if bash[x] == num[x]
# 					# p "we have a match"
# 					counter += 1
# 					# p "the counter is #{counter}"
# 					x += 1
# 				end
# 			end
# 				if counter == num.length - 1
# 					p "add to array #{counter} = #{my_num.length - 1}"
# 					arr1<< num
# 					counter = 0
# 				end
# 			x += 1
# 		end
# 	end
# 	arr1.uniq!	
# 	p arr1
# 	return arr1
# end
# off_by_one_number(["1234","9876"],["1235","0987"])