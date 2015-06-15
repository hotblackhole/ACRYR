class Claim < ActiveRecord::Base
    belongs_to :user
    mount_uploader :uploader, ClaimUploader
end
