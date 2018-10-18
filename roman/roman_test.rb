require "minitest/autorun"
require_relative "roman_code.rb"
class My_test < Minitest::Test

	def test_one
		assert_equal(1,1)
	end
	# def test_for_converter
	# 	assert_equal("IV", roman_converter(4))
	# 	assert_equal("XIX", roman_converter(19))
	# 	assert_equal("CDX", roman_converter(410))
	# end
	def test_for_bigger_numbers
		assert_equal("MCXCI", roman_converter(1191))
		assert_equal("MLXVI", roman_converter(1066))
		assert_equal("XLIX", roman_converter(49))
		assert_equal("CMXCIX", roman_converter(999))
		assert_equal("DCLXVI", roman_converter(666))
	end
	def test_for_arabic
		assert_equal("DCLIX", roman_converter(659))
		assert_equal("CXCIV", roman_converter(194))
		assert_equal("MDXCI", roman_converter(1591))
		assert_equal("CMVIII", roman_converter(908))
		assert_equal("XCIX", roman_converter(99))
	end

	# def test_for_arabic_converter
	# 	assert_equal("I","V", arabic_converter(4))
	# 	assert_equal("X","I", arabic_converter(11))
	# 	assert_equal("X","L", arabic_converter(40))
	# end
	def test_can_convert_numbers
		assert_equal(11, arabic_converter("XI"))
		assert_equal(14, arabic_converter("XIV"))
		assert_equal(19, arabic_converter("XIX"))
		assert_equal(16, arabic_converter("XVI"))
		assert_equal(18, arabic_converter("XVIII"))
	end
	def test_that_can_convert_numbers_in_the_teens
    	assert_equal(1989, arabic_converter("MCMLXXXIX"))
    	assert_equal(1066, arabic_converter("MLXVI"))
    	assert_equal(49, arabic_converter("XLIX"))
    	assert_equal(999, arabic_converter("CMXCIX"))
    	assert_equal(667, arabic_converter("DCLXVII"))
	end

end		