class CreateCardsReadings < ActiveRecord::Migration[6.0]
  def change
    create_table :cards_readings do |t|
      t.integer :num
      t.boolean :upright, default: true
      t.belongs_to :card, null: false, foreign_key: true
      t.belongs_to :reading, null: false, foreign_key: true
    end
  end
end
