class Restaurant < ActiveRecord::Base
	has_many :pictures
	has_many :items, through: :pictures
end
