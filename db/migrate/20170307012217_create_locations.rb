class CreateLocations < ActiveRecord::Migration[5.0]
  def change
    create_table :locations do |t|
      t.string :address
      t.float :latitude
      t.float :longitude
      t.string :title
      t.text :description
      t.string :email
      t.string :website
      t.string :contact
      t.string :volunteer
      t.string :phone

      t.timestamps
    end
  end
end
