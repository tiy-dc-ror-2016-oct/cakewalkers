class Ability
  include CanCan::Ability

  def initialize(user)
    user ||= User.new
    if user.admin?
      can :manage, :all
    elsif user.cakewalker?
      can :read, Order, status: "Ready for delivery"
      can :read, Order, status: "Out for delivery", cakewalker_id: user.id
      can :update, Order, cakewalker_id: nil
      can :update, Order, cakewalker_id: user.id
      can :read, Product
      can :read, User, id: user.id
      can :update, User, id: user.id
      can :destroy, User, id: user.id
    else
      can :create, User
      can :update, User, id: user.id
      can :destroy, User, id: user.id
      can :create, Order
      can :update, Order, client_id: user.id
      can :create, LineItem
      can :destroy, LineItem
    end
  end

end
