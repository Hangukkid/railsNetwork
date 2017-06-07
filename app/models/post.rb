class Post < ApplicationRecord
	has_many :comments, dependent: :destroy
	validates :user_id, presence: true, length: { minimum: 7 }
end
