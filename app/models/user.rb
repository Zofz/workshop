class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  #devise :database_authenticatable, :registerable, :recoverable, :rememberable, :trackable, :validatable, :confirmable, :lockable
  devise :database_authenticatable, :rememberable, :registerable
  attr_accessor :login
  belongs_to :role
  has_many :work_activities
  has_many :works
  has_many :addresses

  #validates :username,
  #          presence: true,
  #          uniqueness: {
  #              case_sensitive: false
  #          }

  def print
    if name? && lastname?
      %(#{name} #{lastname})
    elsif name
      name
    else
      email
    end
  end

  def admin?
    role.try(:title) == :admin
  end

  #def self.find_for_database_authentication(warden_conditions)
  #  conditions = warden_conditions.dup
  #  if login = conditions.delete(:login)
  #    where(conditions.to_hash).where(["lower(username) = :value OR lower(email) = :value", { value: login.downcase }]).first
   # else
   #   where(conditions.to_hash).first
   # end
  #end

end
