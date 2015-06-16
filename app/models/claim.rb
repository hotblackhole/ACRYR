class Claim < ActiveRecord::Base
    has_many :participations
    mount_uploader :picture, ClaimUploader
end
