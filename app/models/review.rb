class Review < ActiveRecord::Base
  belongs_to :claim
  enum kind: [:reject, :improve]

end
