require 'spec_helper'

shared_examples "a dynamic my class" do |method_name = nil|
  let(:address) { method_name.nil? ? MyClassDynamic.new : MyClassDynamic.new(method_name) }

  it "creates the method" do
    address.should respond_to method_name
  end

  it "returns the method name as a string" do
    address.send(method_name).should eq(method_name.to_s)
  end
end

describe MyClassDynamic do
  it_behaves_like "a dynamic my class", MyClassDynamic::DEFAULT_METHOD_NAME
  it_behaves_like "a dynamic my class", :my_dynamic_method
  it_behaves_like "a dynamic my class", :your_dynamic_method
end
