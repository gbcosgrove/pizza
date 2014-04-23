class Pizza
  attr_accessor :toppings
  def initialize(*toppings)
    if toppings == []
      toppings.push Topping.new('cheese')
      @toppings = toppings
    else
      @toppings = toppings
    end
  end

  def vegetarian?
    @toppings.all? do |topping|
      topping.vegetarian
    end
  end

  def add_topping(topping)
    @toppings << topping
  end

end

class Topping
  attr_accessor :name, :vegetarian
  def initialize(name, vegetarian: false)
    @name = name
    @vegetarian = vegetarian
  end

end


Topping.new 'bell peppers', vegetarian: true
Topping.new 'pepperoni'

