class CreateMusics < ActiveRecord::Migration[5.1]
  def change
    create_table :musics do |t|
      t.string :name
      t.string :source
      t.float :length
      t.string :artist

      t.timestamps
    end
  end
end
