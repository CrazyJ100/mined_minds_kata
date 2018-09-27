#MMK Practice Two
require "minitest/autorun"
require_relative "mmk2_relative.rb"
class My_Test < Minitest::Test 

	def test_number_1
		assert_equal(1,1)
	end
	def test_number_15
		assert_equal("mined minds",mmk2(15))
	end
	def test_number_24
		assert_equal("mined",mmk2(24))
	end
	def test_number_10
		assert_equal("minds",mmk2(10))
	end
end
