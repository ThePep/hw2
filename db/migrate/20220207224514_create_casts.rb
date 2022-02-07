class CreateCasts < ActiveRecord::Migration[7.0]
  def change
    create_table :casts do |t|

      t.timestamps
      t.string :title
      t.string :actor_id
      t.string :character
    end
  end
end
