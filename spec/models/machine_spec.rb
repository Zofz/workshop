require "rails_helper"

RSpec.describe Machine, type: :model do
  it "has a valid factory" do
    expect(build(:machine)).to be_valid
  end

  describe "validations" do
    it { is_expected.to validate_presence_of(:customer) }
    it { is_expected.to validate_presence_of(:product) }
  end

  describe "associations" do
    it { is_expected.to belong_to(:customer) }
    it { is_expected.to belong_to(:product) }
    it { is_expected.to have_many(:works) }
    it { is_expected.to have_many(:parts_used) }
    it { is_expected.to have_many(:parts) }
  end
end
