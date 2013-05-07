class ContentTag < ActiveRecord::Base
  attr_accessible :content_id, :name
  belongs_to :content
end
