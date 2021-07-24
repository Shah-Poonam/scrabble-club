class CreateGames < ActiveRecord::Migration[6.0]
  def change
    create_table :games do |t|
      t.string :title
      t.string :location
      t.date :game_date

      t.timestamps
    end
  end
end
