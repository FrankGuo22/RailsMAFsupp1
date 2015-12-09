json.array!(@hels) do |hel|
  json.extract! hel, :id
  json.url hel_url(hel, format: :json)
end
