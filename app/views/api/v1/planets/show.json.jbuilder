json.extract! @planet, :id, :name, :image, :url
json.natives @planet.characters.map(&:url)
