class CreatePosts < ActiveRecord::Migration[6.0]
  def change
    create_table :posts do |t|
      t.string :title
      t.string :intro
      t.string :summary
      t.belongs_to :user
      t.belongs_to :spread
    end
  end
end
