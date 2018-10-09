require "minitest/autorun"
require_relative "cigar.rb"
class My_Test < Minitest::Test

	def test_one
		assert_equal(1,1)
	end

	def test_matching_number_returns_false
		my_number = "1234"
		bash_numbers = "1234"
		assert_equal(false, off_by_one_number(my_number, bash_numbers))
	end

	def test_bash_array_number
		my_number = "1234"
		bash_numbers = ["2222", "3333", "4444"]
		assert_equal(false, off_by_one_number(my_number, bash_numbers))
	end

	def test_array
		my_number = "1234"
		bash_numbers = ["1233", "3333", "4444"]
		assert_equal(["1233"], winning_tickets_off_by_one(my_number, bash_numbers))
	end

	def test_returns_winning
		my_number = "1234"
		bash_numbers = ["1224", "2224", "3331"]
		assert_equal(["1224"], winning_tickets_off_by_one(my_number, bash_numbers))
	end

	def test_returns_true
		my_number = "1234"
		bash_numbers = ["2234", "2341", "2341"]
		assert_equal(["2234"], winning_tickets_off_by_one(my_number, bash_numbers))
	end

	def test_returns_awesome
		my_number = "1234"
		bash_numbers = ["2341", "1334", "1432"]
		assert_equal(["1334"], winning_tickets_off_by_one(my_number, bash_numbers))
	end

	def test_for_this
		my_number = "1234"
		bash_numbers = ["0234", "8463", "7463"]
		assert_equal(["0234"], winning_tickets_off_by_one(my_number, bash_numbers))
	end
end
