#!/usr/bin/ruby -w

class PizzaSlicer
  def initialize(pizzas, people, slices_per_pizza)
    @pizzas = pizzas
    @people = people
    @slices_per_pizza = slices_per_pizza
  end

  def serve
    total_slices = @pizzas * @slices_per_pizza
    total_slices/@people
  end
end

if __FILE__ == $0

  print "How many pizzas? "
  pizzas = gets.strip.to_i
  print "How many people? "
  people = gets.strip.to_i
  print "How many slices per pizza? "
  slices = gets.strip.to_i

  slicer = PizzaSlicer.new(pizzas, people, slices)
  slices_per_person = slicer.serve()
  print "Each person gets #{slices_per_person} slices\n"
end
