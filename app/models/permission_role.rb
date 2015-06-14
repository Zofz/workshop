class PermissionRole < ActiveRecord::Base
  belongs_to :permission
  belongs_to :role

  validates :permission, :role, presence: true
  validates :permission_id, uniqueness: { scope: :role_id }
end
