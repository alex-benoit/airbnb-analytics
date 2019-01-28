# frozen_string_literal: true

class CreateFlats < ActiveRecord::Migration[6.0]
  def change
    create_table :flats do |t|
      t.string :name
      t.text :description
      t.string :location
      t.integer :price
      t.string :photo_url
      t.float :lat
      t.float :lng

      t.timestamps
    end
  end
end
