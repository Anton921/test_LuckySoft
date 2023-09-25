class MyClass
  def self.attr_accessor(attr_name)
    define_method(attr_name) { instance_variable_get("@#{attr_name}") }
    define_method("#{attr_name}=") { |value| instance_variable_set("@#{attr_name}", value) }
  end

  attr_accessor :name
end
