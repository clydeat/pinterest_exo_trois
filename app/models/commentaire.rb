class Commentaire < ApplicationRecord
	belongs_to :user
	belongs_to :pin
end
