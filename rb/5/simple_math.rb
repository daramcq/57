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


def operation(n1, n2, operator)
  return n1.send(operator, n2)
end


if __FILE__ == $0
  first_num = get_val("first")
  second_num = get_val("second")
  for operator in [:+, :-, :*, :-]
    print "#{first_num} #{operator} #{second_num} = #{operation(first_num, second_num, operator)}\n"
  end
end
