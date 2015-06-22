class Ability
  include CanCan::Ability

  def initialize(user)
    user ||= User.new # guest user (not logged in)

    if user.admin?
      can :manage, :all
    elsif user.id.present?
      can [:read, :new, :create, :update, :destroy], :all
      can :search, Product
    else
      can [:new, :create], :session
    end

    if user.role.present?
      user.role.permissions.each do |permission|
        if permission.subject_class == "all"
          can permission.action.to_sym, :all
        else
          can permission.action.to_sym, permission.subject_class.constantize
        end
      end
    end
  end
end
