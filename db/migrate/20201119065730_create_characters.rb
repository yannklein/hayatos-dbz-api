class CreateCharacters < ActiveRecord::Migration[6.0]
  def change
    create_table :characters do |t|
      t.string :name
      t.string :status
      t.string :species
      t.string :series
      t.string :gender
      t.string :image
      t.string :url
      t.references :planet, null: false, foreign_key: true

      t.timestamps
    end
  end
end
