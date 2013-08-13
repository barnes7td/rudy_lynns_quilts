require 'spec_helper'

describe Pattern do
  it "has a valid factory" do
    FactoryGirl.create(:pattern).should be_valid
  end

  it "has a title" do
    FactoryGirl.build(:pattern, title: nil).should_not be_valid
  end

  it "does not duplicate titles" do
    FactoryGirl.create(:pattern, title: "Same")
    FactoryGirl.build(:pattern, title: "Same").should_not be_valid
  end 
end
