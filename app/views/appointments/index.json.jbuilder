json.array!(@appointments) do |appointment|
  json.extract! appointment, :id, :date, :symptoms
  json.url appointment_url(appointment, format: :json)
end
