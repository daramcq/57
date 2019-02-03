def get_number_input
  begin
    return Integer(gets.strip)
  rescue
    print "Please enter a valid number.\n"
    retry
  end
end
