require "rails_helper"

RSpec.describe Customer, type: :model do
  it "has a valid factory" do
    expect(build(:customer)).to be_valid
  end

  describe "validations" do
    it { is_expected.to validate_presence_of(:firstname) }
  end

  describe "ActiveRecord associations" do
    it { is_expected.to have_many(:machines) }
    it { is_expected.to have_many(:products) }
    it { is_expected.to have_many(:addresses) }
    it { is_expected.to have_many(:works) }
    it { is_expected.to have_many(:storages) }
  end
end
