require "rails_helper"

RSpec.describe Idea, type: :model do
  describe "associations" do
    it{ should have_many(:comments) }
  end

  describe "validations" do
    it{ should validate_presence_of(:name) }
  end

  it "has a name" do # yep, you can totally use 'it'
    idea = Idea.create!(name: "My Awesome Idea Name") # creating a new idea 'instance'
    second_idea = Idea.create!(name: "My Second Idea Name") # creating another new idea 'instance'
    expect(second_idea.name).to eq("My Second Idea Name") # this is our expectation
  end
  it "has a description" do
    third_idea = Idea.create!(name: "My Third Idea Name", description: "My Third Idea Description")
    expect(third_idea.description).to eq("My Third Idea Description")
   end 
end

