json.array!(@claims) do |claim|
  json.extract! claim, :id, :title, :description, :client_picture_evidence_path, :user_id
  json.url claim_url(claim, format: :json)
end
