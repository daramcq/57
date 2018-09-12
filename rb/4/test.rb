#!/usr/bin/ruby -w

require_relative "madlib.rb"
require "test/unit"

class TestMadLib < Test::Unit::TestCase
  def test_story
    expected = "Do you walk your blue dog quickly? That's hilarious!"
    components = {
      :noun => "dog",
      :adverb => "quickly",
      :adjective => "blue",
      :verb => "walk",
    }
    assert_equal(expected, story(components))
  end
  def test_article
    assert_equal('an', article('elephant'))
    assert_equal('a', article('mouse'))
    assert_equal('an', article('ocelot'))
    assert_equal('a', article('molecule'))
  end
end
