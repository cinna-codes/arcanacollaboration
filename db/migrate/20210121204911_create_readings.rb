class CreateReadings < ActiveRecord::Migration[6.0]
  def change
    create_table :readings do |t|
      t.boolean :upright
      t.string :desc
      t.belongs_to :post, null: false, foreign_key: true
      t.belongs_to :card, null: false, foreign_key: true
    end
  end
end
