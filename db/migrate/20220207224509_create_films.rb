class CreateFilms < ActiveRecord::Migration[7.0]
  def change
    create_table :films do |t|

      t.timestamps
      t.string :title
      t.integer :year
      t.string :rating
      t.string :director_id

    end
  end
end
