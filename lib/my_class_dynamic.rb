class MyClassDynamic
  DEFAULT_METHOD_NAME = :my_dynamic_method

  def initialize(method_name = nil)
    method_name = DEFAULT_METHOD_NAME unless method_name

    method_definition = Proc.new { method_name.to_s }
    self.class.send(:define_method, method_name, method_definition)
  end
end

