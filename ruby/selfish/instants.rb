class WithClassInstanceVar
  @the_var = 'initialised in class body with @the_var'
  def self.read_the_var
    @the_var
  end
end
