class Article < ActiveRecord::Base
  attr_accessible :content, :qualification_id, :title, :user_id
  has_many :responses, dependent: :destroy
  belongs_to :qualification
  belongs_to :user
end
