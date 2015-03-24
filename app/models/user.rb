class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
        :recoverable, :rememberable, :trackable, :validatable
  attr_accessor :login
  
  #->Prelang (user_login:devise/username_login_support)
  has_many :work_parts
  has_many :works
  has_many :addresses

  def print
    if name? && lastname?
      %(#{name} #{lastname})
    elsif name
      name
    else
      username
    end
  end

  def self.find_first_by_auth_conditions(warden_conditions)
    conditions = warden_conditions.dup
    if login = conditions.delete(:login)
      where(conditions).where(["lower(username) = :value OR lower(email) = :value", {value: login.downcase}]).first
    else
      where(conditions).first
    end
  end


  devise authentication_keys: [:login]
end
