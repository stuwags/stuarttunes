class AddPurchases < ActiveRecord::Migration
  def change
      create_table :purchases do |t|
      t.integer :user_id
      t.integer :song_id
      t.decimal :price
    end
  end
end
