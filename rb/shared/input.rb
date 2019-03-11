def get_number_input
  begin
    return Integer(gets.strip)
  rescue
    print "Please enter a valid number.\n"
    retry
  end
end


def get_choice_input(choices)
  begin
    input = gets.strip
    puts input
    if !choices.include(input)
      raise
    end
    return input
  rescue
    print "Please enter one of the options: #{choices}: "
    retry
  end
end
    
