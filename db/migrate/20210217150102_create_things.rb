class CreateThings < ActiveRecord::Migration[6.1]

  def change

    create_table :things do |t|

      t.text :content, null: false

      t.string :user_id, 

      t.references :user, null: false, foreign_key: true

      t.detetime :start_time


      t.timestamps

    end

  end

end

