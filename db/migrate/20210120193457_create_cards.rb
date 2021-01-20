class CreateCards < ActiveRecord::Migration[6.0]
  def change
    create_table :cards do |t|
      t.string :name
      t.string :keywords
      t.string :desc
      t.string :suit
    end
  end
end
