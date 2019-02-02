#!/usr/bin/ruby -w

def get_val(order)
  print "What is the #{order} number?\n"
  begin
    return Integer(gets.strip)
  rescue
    print "Please enter a valid number.\n"
    retry
  end
end


if __FILE__ == $0
  first_num = get_val("first")
  second_num = get_val("second")
  print "#{first_num} + #{second_num} = #{first_num + second_num}\n"
  print "#{first_num} - #{second_num} = #{first_num - second_num}\n"
  print "#{first_num} * #{second_num} = #{first_num * second_num}\n"
  print "#{first_num} / #{second_num} = #{first_num / second_num}\n"
end
