class CreateExcursions < ActiveRecord::Migration[5.2]
  def change
    create_table :excursions do |t|
      t.string :country
      t.string :city
      t.text :description
      t.text :particulars
      t.decimal :price, precision: 5, scale: 2

      t.timestamps
    end
  end
end
