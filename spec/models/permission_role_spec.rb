require 'rails_helper'

RSpec.describe PermissionRole, type: :model do
  it { is_expected.to belong_to(:permission) }
  it { is_expected.to belong_to(:role) }

  it { is_expected.to validate_presence_of(:permission) }
  it { is_expected.to validate_presence_of(:role) }
  it { is_expected.to validate_uniqueness_of(:permission_id).scoped_to(:role_id) }
end
