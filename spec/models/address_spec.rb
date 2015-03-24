require 'rails_helper'

RSpec.describe Address, type: :model do
  it "has a valid factory" do
    (build(:address)).should be_valid
  end

  # Lazily loaded to ensure it's only used when it's needed
  # RSpec tip: Try to avoid @instance_variables if possible. They're slow.
  let(:address) { create(:address) }

  describe 'ActiveModel validations' do
    it { address.should validate_presence_of(:city) }
    it { address.should validate_presence_of(:street) }
    it { address.should validate_presence_of(:customer) }
  end

  describe "ActiveRecord associations" do
    it { should belong_to(:customer) }
    it { should have_one(:city) }
  end

  describe "public instance methods" do
    context "responds to its methods" do
      #it { should respond_to(:send_email) }
    end

    context "executes methods correctly" do

    end
  end
end
