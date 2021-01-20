class CreateSpreads < ActiveRecord::Migration[6.0]
  def change
    create_table :spreads do |t|
      t.string :title
      t.string :desc
      t.integer :num_of_cards
    end
  end
end
