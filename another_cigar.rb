def the_bash(my_nums, bash_nums)
	array = []
	my_nums.each do |item|
		puts item
	if bash_nums.include?(item)
		array << item
	end
end
	return array
end

def off_by_one(my_nums, bash_nums)
    counter = 0
    x = 0
    arr1 = []
    my_nums.each do |num|
        bash_nums.each do |bash|
            num.length.times do
                if bash[x] == num[x]
                        counter += 1
                    if counter == num.length - 1
                        arr1 << num
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