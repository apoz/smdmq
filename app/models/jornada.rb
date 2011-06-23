class Jornada < ActiveRecord::Base
 validates :numero, :presence => true
 validates :numero, :uniqueness => true
end
