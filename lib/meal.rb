class Meal
  
  attr_accessor :customer, :waiter, :total, :tip 
  @@all = []
  
  def initialize (customer, waiter, total, tip=0)
    @customer = customer
    @waiter = waiter
    @total = total 
    @tip = tip
    @@all << self 
  end 
  
  def self.all 
    @@all 
  end 
  
  def new_meal( waiter, total, tip=0)
    Meal.new(waiter, self, total, tip)
  end 
  
  
end