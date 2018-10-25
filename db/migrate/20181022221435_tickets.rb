class Tickets < ActiveRecord::Migration[5.0]
  def change
    create_table :tickets do |t|
      t.string :user_name
      t.string :movie_title
      t.datetime :movie_time

    end
  end
end
