class Selfish
  puts "self in class body is #{self}"

  def initialize
    puts "self in initalize body is #{self}"
  end

  def a_method
    puts "self in a method body is #{self}"
  end

  def method_with_params(self_in_params = self)
    puts "self in parameters of method is #{self}"
  end

  class << self
    puts "self in 'class << self' body is #{self}"
  end

end
