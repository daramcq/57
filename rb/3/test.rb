#!/usr/bin/ruby -w

require_relative "quote.rb"
require "test/unit"

class TestQuote < Test::Unit::TestCase
  def test_quote
    expected = 'Jean-Paul Sartre says, "Hell is other people".'
    assert_equal(expected,
                 write_quote("Hell is other people",
                             "Jean-Paul Sartre"))
  end
end
