require "rails_helper"

RSpec.describe Permission, type: :model do
  subject(:permission) { build(:permission) }

  describe "Associations" do
    it { is_expected.to validate_presence_of(:subject_class) }
    it { is_expected.to validate_presence_of(:action) }
    it { is_expected.to validate_uniqueness_of(:subject_class).scoped_to(:action) }
  end
end
