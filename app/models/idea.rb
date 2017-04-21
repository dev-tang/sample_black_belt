class Idea < ActiveRecord::Base
	belongs_to :user
	has_many :likes, :dependent => :destroy

	validates :message, presence: true

end
