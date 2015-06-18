require 'rails_helper'

RSpec.describe City, type: :model do
  it "has a valid factory" do
    expect(build(:city)).to be_valid
  end

  subject(:city) { create(:city) }

  describe "ActiveModel validations" do
    it { is_expected.to validate_presence_of(:postal_code) }
    it { is_expected.to validate_presence_of(:postal_title) }
  end

  describe "ActiveRecord associations" do
    it { is_expected.to have_many(:addresses) }
  end
end
