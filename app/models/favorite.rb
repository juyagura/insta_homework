class Favorite < ActiveRecord::Base
  validates(:user_id, {:uniqueness => { :scope => :photo_id}})

  belongs_to :photo
  belongs_to :user
end
