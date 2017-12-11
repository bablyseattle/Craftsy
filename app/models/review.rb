class Review < ActiveRecord::Base
	belongs_to :user, optional: true
  belongs_to :product, optional: true

  validates :content, :presence => true

end