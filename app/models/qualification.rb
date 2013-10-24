class Qualification < ActiveRecord::Base
  attr_accessible :details, :grade, :name
  has_many :responses
end
