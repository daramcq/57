#!/usr/bin/ruby -w

require_relative "num_chars.rb"
require "test/unit"

class TestNumChars < Test::Unit::TestCase
  def test_num_chars
    expected = "Hello has 5 characters."
    assert_equal(expected, length_message('hello'))
    assert_equal(2, num_chars('ok'))
  end
end
