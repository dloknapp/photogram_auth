class Comment < ActiveRecord::Base

  validates :body, :presence => true
  validates :photo, :presence => true
  validates :user, :presence => true

  belongs_to :photo
  belongs_to :user


end
