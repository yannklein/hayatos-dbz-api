json.array! @characters do |character|
  json.extract! character, :id, :name, :status, :species, :series, :gender, :image, :url, :planet_id
end
