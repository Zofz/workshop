require 'rails_helper'

RSpec.describe MachineType, type: :model do
  it "has a valid factory" do
    (build(:machine_type)).should be_valid
  end

  subject(:type) { create(:machine_type) }

  describe 'ActiveModel validations' do
    it { should validate_presence_of(:customer) }
    it { should validate_presence_of(:machine_model) }
  end

  describe "ActiveRecord associations" do
    it { should belong_to(:customer) }
    it { should belong_to(:machine_model) }
    it { should have_many(:works) }
  end

  describe "public instance methods" do
    context "responds to its methods" do
      #it { should respond_to(:send_email) }
    end

    context "executes methods correctly" do

    end
  end
end
