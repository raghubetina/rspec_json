require 'rspec'

describe "Behaviour" do
  it "should pass" do
    true.should eq true
  end

  it "should fail" do
    true.should eq false
  end

  it "should pending"
end
