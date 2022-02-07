class CreatePeople < ActiveRecord::Migration[7.0]
  def change
    create_table :people do |t|

      t.timestamps
      t.string :name
    end
  end
end
