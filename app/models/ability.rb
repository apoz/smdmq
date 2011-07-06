class Ability
  include CanCan::Ability
  
  def initialize(user)
    user ||= User.new #guest user
	if user
	   if user.has_role? :administrator
			can :manage, :all
			can :see_timestamps, User
		elsif user.has_role? :tesorero
			can :manage, Ingreso
		elsif user.has_role? :sanedrin 
			can :read, :all
		else
			can :see_timestamps, User, :id => user.id
		end
	end
  end
end
