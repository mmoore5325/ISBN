require "minitest/autorun"
require_relative "isbnv2test.rb"

class TestIsbn <Minitest::Test
	
	def test_valid_ten_digit_isbn_returns_true
		isbn = "0471958697"
		assert_equal(true, valid_isbn?(isbn))
	end

	def test_empty_string_returns_false
		isbn = ""
		assert_equal(false, valid_isbn?(isbn))
	end

	def test_valid_isbn_with_spaces_returns_true
		isbn = "0 47 19 58 697"
		assert_equal(true, valid_isbn?(isbn))
	end

	def test_valid_isbn_with_dashes_returns_true
		isbn = "0-47-19-58-697"
		assert_equal(true, valid_isbn?(isbn))
	end
end

