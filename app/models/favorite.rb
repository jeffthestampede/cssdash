class Favorite < ActiveRecord::Base
  attr_accessible :content_id, :deleted, :shared_on_fb, :shared_on_twitter, :user_id
  belongs_to :user
end
