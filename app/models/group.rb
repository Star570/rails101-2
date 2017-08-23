class Group < ApplicationRecord
	validates :title, presence: true
	belongs_to :user
	has_many :posts
	has_many :members, through: :group_relationship, source: :user
end
