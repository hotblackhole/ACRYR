class Claim < ActiveRecord::Base
    has_many :participations
    has_many :evidences
    has_many :reviews
    mount_uploader :picture, ClaimUploader
    enum state: [:draft, :published]
end
