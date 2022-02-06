class CreateFilms < ActiveRecord::Migration[7.0]
  def change
    create_table :films do |t|

      t.timestamps
      t.string :film
      t.integer :year
      t.string :rating
      t.string :director
    end
  end
end
