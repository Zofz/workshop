require 'rails_helper'

RSpec.describe Address, type: :model do
  it "has a valid factory" do
    expect(build(:address)).to be_valid
  end

  let(:address) { create(:address) }

  describe 'ActiveModel validations' do
    it { is_expected.to validate_presence_of(:street) }
  end

  describe "ActiveRecord associations" do
    it { is_expected.to belong_to(:customer) }
    it { is_expected.to belong_to(:user) }
    it { is_expected.to belong_to(:city) }
  end
end
