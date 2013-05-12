class Comment < ActiveRecord::Base
  attr_accessible :body, :content_id, :user_id

  belongs_to :content
  belongs_to :user
end
