require 'spec_helper'

describe Comment do
  
  it "has a valid factory" do
  	expect(FactoryGirl.build(:comment)).to be_valid
  end
end
