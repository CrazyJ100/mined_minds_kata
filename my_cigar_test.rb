require "minitest/autorun"
require_relative "my_cigar.rb"
class My_Test < Minitest::Test

	def test_number_1
		assert_equal(1,1)
	end
	def test_number_2
		my_numbers = ["0727","0524","1002"]
		bash_numbers = ["0727","1002","5436","0957","3647"]
		assert_equal(["0727","1002"],winning_bash(my_numbers,bash_numbers))
	end
	def test_number_3
		my_numbers = ["0727","0524","1002","3245","3249"]
		bash_numbers = ["0727","1002","5436","0957","3647","3257","3249"]
		assert_equal(["0727","1002","3249"],winning_bash(my_numbers,bash_numbers))
	end
	def test_one_off_1
		my_numbers = ["4396","5436","5679","2314"]
		bash_numbers = ["4356","5678","2365","0978","2309"]
		assert_equal(["4356","5678"],offbyonenumber(my_numbers, bash_numbers))
	end
	def test_one_off_2
		my_numbers = ["3245","5784","3829"]
		bash_numbers = ["3242","2534","3453","6745","8769","3475","7690"]
		assert_equal(["3245"],offbyonenumber(my_numbers,bash_numbers))
	end
	def test_one_off_3
		my_numbers = ["2456","6577","3209"]
		bash_numbers = ["2454","4667","4353","6587","9807"]
		assert_equal(["2456"],offbyonenumber(my_numbers,bash_numbers))
	end

end
