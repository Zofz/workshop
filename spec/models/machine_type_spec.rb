require "rails_helper"

RSpec.describe MachineType, type: :model do
  it "has a valid factory" do
    expect(build(:machine_type)).to be_valid
  end

  describe "validations" do
    it { is_expected.to validate_presence_of(:title) }
  end

  describe "associations" do
    it { is_expected.to have_many(:products) }
    it { is_expected.to have_many(:brands) }
  end
end
