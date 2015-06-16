class Claim < ActiveRecord::Base
  belongs_to :user
  has_many :evidences
  mount_uploader :picture, ClaimUploader
end
