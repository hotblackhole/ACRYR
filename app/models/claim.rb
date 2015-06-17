class Claim < ActiveRecord::Base
    has_many :participations
    has_many :evidences
    mount_uploader :picture, ClaimUploader
    enum state: [:draft, :published]
end
