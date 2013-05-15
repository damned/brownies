class WithClassVar
  @@the_var = 'initialised in class body with @@the_var'
  def self.read_the_class_var
    @@the_var
  end
  def read_the_class_var_from_instance
    @@the_var
  end
  def self.set_the_class_instance_var(value)
    @the_var = value
  end
  def self.get_the_class_instance_var
    @the_var
  end
end
