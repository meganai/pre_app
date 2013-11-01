class UsersQualification < ActiveRecord::Base
  attr_accessible :qualification_id, :score, :user_id
  belongs_to :qualification
end
