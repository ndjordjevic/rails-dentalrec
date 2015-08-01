json.array!(@dentists) do |dentist|
  json.extract! dentist, :id, :first_name, :last_name, :email, :phone
  json.url dentist_url(dentist, format: :json)
end
