require "minitest/testrun"

class My_test < Minitest::Test
	def test_one
		assert_equal(1,1)
	end