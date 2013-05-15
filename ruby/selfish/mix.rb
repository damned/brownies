module OurMixin
  @module_var = 'shamoan!'
  def some_instance_method
    puts "booyaka! #{@module_var}, self = #{self}"
  end
  @@module_class_var = 'michael buble!'
  def OurMixin.some_class_method
    puts "kerching! #{@@module_class_var}, self = #{self}"
  end
  def instance_method_using_module_class_method
    OurMixin.some_class_method
  end
  def set_module_var(value)
    @module_var = value
  end
end

class LittleMixIncluded
  include OurMixin
end

class LittleMixExtended
  extend OurMixin
end
