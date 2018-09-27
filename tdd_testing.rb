require "minitest/autorun"
require_relative "tdd_testrel.rb"
class My_test < Minitest::Test 

	def test_one
		assert_equal(3,add(1,2))
	end
	def test_two
		assert_equal(5,subtract(8,3))
	end
end