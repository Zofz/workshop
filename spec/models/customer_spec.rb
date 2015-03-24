require 'rails_helper'

RSpec.describe Customer, type: :model do
  it "has a valid factory" do
    (build(:customer)).should be_valid
  end

  # Lazily loaded to ensure it's only used when it's needed
  # RSpec tip: Try to avoid @instance_variables if possible. They're slow.
  let(:customer) { create(:customer) }
  let(:company) { create(:customer, :w_company) }
  let(:other_customer) { create(:customer) }
  subject(:customer) { build(:customer) }

  describe 'ActiveModel validations' do
    # Basic validations
    it { should validate_presence_of(:name) }
    it { should validate_presence_of(:lastname) }

    context 'if company' do
      it { company.should validate_presence_of(:company_name) }
      it { company.should validate_presence_of(:org_nbr) }
      it { company.should validate_presence_of(:name) }
      it { company.should validate_presence_of(:lastname) }
    end

  end

  describe "ActiveRecord associations" do
    it { should have_many(:machines) }
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
