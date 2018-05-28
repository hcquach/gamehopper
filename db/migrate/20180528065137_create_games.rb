class CreateGames < ActiveRecord::Migration[5.2]
  def change
    create_table :games do |t|
      t.string :title
      t.string :photo
      t.string :description
      t.string :platform
      t.boolean :available

      t.timestamps
    end
  end
end
