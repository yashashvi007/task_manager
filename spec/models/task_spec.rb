require 'rails_helper'

RSpec.describe Task, :type => :model do 
  it "is valid with valid attributes" do 
    expect(Task.new).to be_valid
  end
end