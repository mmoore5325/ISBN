require "minitest/autorun"
require_relative "isbnv2test.rb"
require_relative "isbnv2_13.rb"

class TestIsbn <Minitest::Test
	
	def test_valid_ten_digit_isbn_returns_true
		isbn = "0471958697"
		assert_equal(true, valid_isbn_10?(isbn))
	end

	def test_empty_string_returns_false
		isbn = ""
		assert_equal(false, valid_isbn_10?(isbn))
	end

	def test_valid_isbn_with_spaces_returns_true
		isbn = "0 47 19 58 697"
		assert_equal(true, valid_isbn_10?(isbn))
	end

	def test_valid_isbn_with_dashes_returns_true
		isbn = "0-47-19-58-697"
		assert_equal(true, valid_isbn_10?(isbn))
	end

	def test_invalid_isbn_10_returns_false
		isbn = "0471598699"
		assert_equal(false, validate_isbn_10?(isbn))
	end

	def test_valid_isbn_10_returns_true
		isbn = "123456789x"
		assert_equal(true, validate_isbn_10?(isbn))
	end

	def test_valid_13_digit_isbn_returns_true
		isbn = "1234567891234"
		assert_equal(true, valid_isbn_13?(isbn))
	end
end
	



