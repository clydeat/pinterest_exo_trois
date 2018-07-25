class Pin < ApplicationRecord
	belongs_to :user
	has_many :commentaires
end
