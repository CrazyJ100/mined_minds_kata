#MMK Practice One
require "minitest/autorun"
require_relative "def MMK_practice.rb"
class My_Test < Minitest::Test

	def test_number_1
		assert_equal(1,1)
	end
	def test_number_15
		assert_equal("mined minds",MMK(10))
	end
	def test_number_9
		assert_equal("mined",MMK(9))
	end
	def test_number_10
		assert_equal("minds",MMK(10))
	end
end



