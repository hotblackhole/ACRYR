class RemoveClientPictureEvidencePathFromClaims < ActiveRecord::Migration
  def change
    remove_column :claims, :client_picture_evidence_path, :string
  end
end
