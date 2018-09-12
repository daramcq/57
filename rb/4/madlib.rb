#!/usr/bin/ruby -w

def story(elements)
  return "Do you %{verb} your %{adjective} %{noun} %{adverb}? That's hilarious!" % elements
end

def article(word)
  vowels = ['a','e','i','o','u']
  if vowels.any?{|vowel| word.start_with?(vowel)}
    return 'an'
  end
  return 'a'
end

if __FILE__ == $0
  components = {}
  for element in ['verb', 'adjective','noun', 'adverb']
    print "Enter #{article(element)} #{element}: "
    components[element.to_sym] = gets.strip
  end
  print story(components) + '\n'
end
