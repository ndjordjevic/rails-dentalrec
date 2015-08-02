json.array!(@offices) do |office|
  json.extract! office, :id, :name, :street, :city, :zip, :state, :country, :phone, :dentist_id
  json.url office_url(office, format: :json)
end
