json.array!(@myproducts) do |myproduct|
  json.extract! myproduct, :id, :title, :description, :image_url, :price, :bottle_size, :company, :country, :grape_type, :suit_vegetarian
  json.url myproduct_url(myproduct, format: :json)
end
