class AddPriceToGames < ActiveRecord::Migration[5.2]
  def change
    add_column :games, :price, :integer
  end
end
