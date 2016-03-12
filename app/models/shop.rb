class Shop < ActiveRecord::Base

	serialize :days
	belongs_to :country
	belongs_to :category
end
