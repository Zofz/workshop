class Role < ActiveRecord::Base
  has_many :permissions, through: :permission_roles
  has_many :permission_roles, dependent: :destroy

  validates :title, presence: true, uniqueness: true
end
