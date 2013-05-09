class Content < ActiveRecord::Base
  attr_accessible :created_on, :css, :deleted, :description, :html, :title, :visible, :likes, :views, :favorites, :user_id, :tag_list
  acts_as_taggable
  belongs_to :user
  has_many :content_tags
  has_many :comments
end
