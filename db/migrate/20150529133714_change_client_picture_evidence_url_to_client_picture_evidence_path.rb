class ChangeClientPictureEvidenceUrlToClientPictureEvidencePath < ActiveRecord::Migration
  def change
      rename_column :claims, :client_picture_evidence_url, :client_picture_evidence_path
  end
end
