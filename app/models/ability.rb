class Ability
  include CanCan::Ability

  def initialize(user)
    user ||= User.new # guest user (not logged in)
    if user.roles == "admin"
      can :manage, :all
    else
      can :read, :all
      can :create, User
      can :create, Session
      can :create, Order
      can :create, LineItem
    end
  end

end
