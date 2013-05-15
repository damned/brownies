class SubclassWithClassVar < WithClassVar
  def set_the_class_var_from_instance(value)
    @@the_var = value
  end
end
