require "minitest/autorun"
require_relative "roman_code.rb"
class My_test < Minitest::Test

	def test_one
		assert_equal(1,1)
	end
	def test_for_string
		assert_equal(String, numerals(1).class)
	end
	def test_for_arabic
		assert_equal(String, numerals(40).class)
	end
	def test_for_numerals
		assert_equal(String, numerals(5).class)
	end
	# def test_for_p
	# 	assert_equal(String,numerals,numbers(10).class)
	# 	assert_equal(String, romans, numbers(14).class)
	# end

end