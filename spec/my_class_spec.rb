require 'spec_helper'

describe MyClass do
  it "returns 'my_method'" do
    MyClass.new.my_method.should eq("my_method")
  end
end
