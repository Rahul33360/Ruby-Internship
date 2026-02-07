class CreateProduct1sOffers < ActiveRecord::Migration[8.1]
  def change
    create_table :product1s_offers do |t|
      t.references :product1, null: false, foreign_key: true
      t.references :offer, null: false, foreign_key: true

      t.timestamps
    end
  end
end
