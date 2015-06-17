class Evidence < ActiveRecord::Base
  belongs_to :claim
  mount_uploader :picture, EvidenceUploader

end
