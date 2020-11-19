class Planet < ApplicationRecord
  validates :name, :url, presence: true
  has_many :characters
end
