require "minitest/autorun"
require_relative "another_cigar.rb"
class My_Test < Minitest::Test

	def test_number_1
		assert_equal(1,1)
	end
	def test_number2
		my_nums = ["2453","8479","0239"]
		bash_nums = ["4839","2453","3260","2019","4039","0239"]
		assert_equal(["2453","0239"],the_bash(my_nums,bash_nums))
	end
	def test_number3
		my_nums = ["9483","49303","03982"]
		bash_nums = ["39480","02291","03982","9483","48390"]
		assert_equal(["9483","03982"],the_bash(my_nums,bash_nums))
	end
	def test_number4
		my_nums = ["23490","78459"]
		bash_nums = ["34895","30945","23491","88459"]
		assert_equal(["23490","78459"], off_by_one(my_nums, bash_nums))
	end



end