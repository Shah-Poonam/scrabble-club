class CreateParticipants < ActiveRecord::Migration[6.0]
  def change
    create_table :participants do |t|
      t.string :status
      t.decimal :score
      t.references :game, null: false, foreign_key: true
      t.references :member, null: false, foreign_key: true

      t.timestamps
    end
  end
end
