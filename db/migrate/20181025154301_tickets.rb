class Tickets < ActiveRecord::Migration[5.0]
  def change
    create_table :tickets do |t|
      t.string :users
      t.string :movies
    end
  end
end
