class Response < ActiveRecord::Base
  attr_accessible :content, :title, :user_id, :article_id
  belongs_to :user
end
