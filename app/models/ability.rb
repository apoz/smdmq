class Ability
  include CanCan::Ability
  
  def initialize(user)
    #user ||= User.create_guest #guest user
	if user
	   if user.has_role? :administrator
			puts "TIPO ADMINISTRATORRR"
			can :manage, :all
		elsif user.has_role? :tesorero
			puts "TIPO TESORERO"
			can :manage, Ingreso
		else 
			puts "TIPO ELSE"
			can :read, :all
		end
	else
		#guest user
	end
  end
end