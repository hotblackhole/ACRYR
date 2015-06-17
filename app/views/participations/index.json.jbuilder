json.array!(@participations) do |participation|
  json.extract! participation, :id, :user_id, :claim_id, :author
  json.url participation_url(participation, format: :json)
end
