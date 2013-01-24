require 'spec_helper'

describe MyClassDynamic do
  it "creates the method with the default method name" do
    MyClassDynamic.new.should respond_to MyClassDynamic::DEFAULT_METHOD_NAME
  end

  it "returns the default method name as a string" do
    MyClassDynamic.new.send(MyClassDynamic::DEFAULT_METHOD_NAME).should eq(MyClassDynamic::DEFAULT_METHOD_NAME.to_s)
  end

  it "creates the method with the :dynamic_method" do
    MyClassDynamic.new(:dynamic_method).should respond_to :dynamic_method
  end

  it "returns :dynamic_method as a string" do
    MyClassDynamic.new.send(:dynamic_method).should eq(:dynamic_method.to_s)
  end
end
