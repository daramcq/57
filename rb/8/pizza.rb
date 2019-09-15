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
