class User < ActiveRecord::Base
	has_and_belongs_to_many :roles
	has_many :ingresos
  # Include default devise modules. Others available are:
  # :token_authenticatable, :encryptable, :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable, :recoverable, :rememberable, :trackable, :validatable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :email, :password, :password_confirmation, :remember_me, :username, :role_ids
  
  def self.create_guest
    self.new
  end

  def guest?
    self.uninitialized?
  end
  
  def role?(role)
    return !!self.roles.find_by_name(role.to_s.camelize)
  end
  
  def has_role?(role)
		roles = self.roles
		roles.each do |rol|
			if rol.name.to_sym == role
				return true
			end	
		end
		return false
  end
end
