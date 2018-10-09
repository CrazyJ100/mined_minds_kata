# require "minitest/testrun"
# require_relative "mmarray_relative.rb"
# class My_test < Minitest::Test

# 	def test_number_one
# 		assert_equal(1,1)
# 	end

# 	def test_for_array
# 		assert_equal(Array,mmarray.class)
# 	end
# 	def test_one_returns_two
# 		assert_equal([1], buzz(2, mmarray))
# 	end
# 	def test_
# end
def mmarray
	mmarray = []
end

def fizzbuzz(x, mmarray)

	if x % 15 == 0
		mmarray<< "Mined Minds"
	elsif 
		x % 3 == 0
		mmarray<< "Mined"
	elsif 
		x % 5 == 0
		mmarray<< "Minds"
	else
		mmarray<< x
	end
end

x = 1
mmarray = []

until x == 101

	fizzbuzz(x, mmarray)
	x +=1
	if x == 101
		p mmarray [0...100]
	end
end