class Comment < ActiveRecord::Base
  attr_accessible :comment, :content_id, :user_id
  belongs_to :content
end
