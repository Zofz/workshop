require 'rails_helper'

RSpec.describe Permission, type: :model do
  let(:permission) { create(:permission) }
  subject(:permission) { build(:permission) }

  describe "Associations" do
    it { expect(permission).to have_many(:permission_roles) }
    it { expect(permission).to have_many(:roles) }
  end
end
