#!/usr/bin/ruby -w

require_relative "hello"
require "test/unit"

class TestHello < Test::Unit::TestCase
  def test_hello
    expected = 'Hello, Dara, nice to meet you!'
    assert_equal(expected, hello('Dara'))
  end
end
