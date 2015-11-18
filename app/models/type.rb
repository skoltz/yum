class Type < ActiveRecord::Base
	has_many :items
	has_many :pictures, through: :items
end
