class Pizza
end

class Topping
  attr_accessor :name
  def initialize(name, vegetarian: false)
    @name = name
    @vegetarian = vegetarian
  end

end

 Topping.new 'bell peppers', vegetarian: true

