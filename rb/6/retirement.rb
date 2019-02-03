#!/usr/bin/ruby -w

def get_number_input
  begin
    return Integer(gets.strip)
  rescue
    print "Please enter a valid number.\n"
    retry
  end
end


if __FILE__ == $0
  print "What is your current age?\n"
  age = get_number_input()
  print "At what age would you like to retire?\n"

  retirement_age = get_number_input()
  years_til_retirement = retirement_age - age
  current_year = Time.now.year
  retirement_year = current_year + years_til_retirement

  if retirement_year <= current_year
    print "You're already retired!\n"
  else
    print "You have #{years_til_retirement} years until you can retire.\n"
    print "It's now #{current_year}, so you can retire in #{retirement_year}\n"
  end

end
