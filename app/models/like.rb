class Like < ActiveRecord::Base

  validates :photo, :presence => true
  validates :user, :presence => true,:uniqueness => { :scope => :photo_id}

  belongs_to :photo
  belongs_to :user
end
