require "minitest/autorun"
require_relative "my_cigar.rb"
class My_Test < Minitest::Test

	def test_number_1
		assert_equal(1,1)
	end
	def test_number_2
		my_num = ["0727","0524","1002"]
		bash_num = ["0727","1002","5436","0957","3647"]
		assert_equal(["0727","1002"],winning_bash(my_num,bash_num))
	end
	def test_number_3
		my_num = ["0727","0524","1002","3245","3249"]
		bash_num = ["0727","1002","5436","0957","3647","3257","3249"]
		assert_equal(["0727","1002","3249"],winning_bash(my_num,bash_num))
	end




end