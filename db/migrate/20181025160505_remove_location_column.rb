class RemoveLocationColumn < ActiveRecord::Migration[5.0]
  def change
    remove_column(:movies, :location)
  end
end
