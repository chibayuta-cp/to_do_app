class AddStartTimeToThings < ActiveRecord::Migration[6.1]
  def change
    add_column :things, :start_time, :datetime
  end
end
