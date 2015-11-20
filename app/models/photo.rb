class Photo < ActiveRecord::Base

  validates :user, :presence => true

  belongs_to :user
  has_many :comments, :dependent => :destroy
  # This will destroy comments if a photo is deleted. Want this on almost every has_many association. Can also use something called nillify if you want to save your data
  has_many :fans, :through => :likes, :source => :user
  has_many :likes



end
