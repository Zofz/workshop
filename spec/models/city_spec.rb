require 'rails_helper'

RSpec.describe City, type: :model do
  it "has a valid factory" do
    (build(:city)).should be_valid
  end

  subject(:city) { create(:city) }

  describe 'ActiveModel validations' do
    it { should validate_presence_of(:title) }
    it { should validate_presence_of(:postal_code) }
    it { should validate_presence_of(:postal_title) }
  end

  describe "ActiveRecord associations" do
    it { should have_many(:addresses) }
  end

  describe "public instance methods" do
    context "responds to its methods" do
      #it { should respond_to(:send_email) }
    end

    context "executes methods correctly" do

    end
  end
end
