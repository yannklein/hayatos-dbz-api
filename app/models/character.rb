class Character < ApplicationRecord
  belongs_to :planet
  validates :name, :url, presence: true
end
