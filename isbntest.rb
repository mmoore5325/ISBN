require "minitest/autorun"
require_relative "isbn10_assert_test.rb"
require_relative "isbn13_assert_test.rb"

class TestISBN < Minitest::Test


	def test_1_equals_1
		assert_equal(1, 1)
	end

	def test_isbn10_length_returns_true
		num = "1234567890"
		assert_equal(true, isbnlength10(num))
	end

	def test_isbn13_length_returns_true
		num = "1234567891234"
		assert_equal(true, isbnlength13(num))
	end

	def test_valid_10_digit_returns_true
		num = "123-4-56 789-0"
		assert_equal(true, isbnlength10(num))
	end

	def test_valid_13_digit_returns_true
		num = "123-4 56-78--9 13-4 2"
		assert_equal(true, isbnlength13(num))
	end

	def test_invalid_10_digit_returns_false
		num = "12345678"
		assert_equal(false, isbnlength10(num))
	end

	def test_valid_13_digit_checkdigit_match_returns_true
		num = "978-047-0059 02"
		assert_equal(true, isbn13(num))
	end
		# def test_valid_10_digit_check_digit_returns_valid
	# 	number = "0-13609181-4"
	# 	assert_equal(true, isbn10(number))
	# end

	# def test_valid_10_digit_check_digit_returns_invalid
	# 	number = "817525766-7"
	# 	assert_equal(false, isbn10(number))
	# end

	# def test_valid_10_digit_check_digit_with_X_returns_valid
	# 	number = "0-76458572-X"
	# 	assert_equal(true, isbn10(number))
	# end

	# def test_valid_13_digit_check_digit_returns_valid
	# 	number = "978-3-16-148410-0"
	# 	assert_equal(true, isbn13(number))
	# end

	# def test_valid_13_digit_check_digit_returns_invalid
	# 	number = "345-3-16-148410-0"
	# 	assert_equal(false, isbn13(number))
	# end

end