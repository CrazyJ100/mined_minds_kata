require "minitest/autorun"
require_relative "tdd_testrel.rb"
class My_test < Minitest::Test

	def test_one
		assert_equal(3,add(2,1))
	end
	def test_two
		assert_euqal(5,add(2.3))
	end
end



