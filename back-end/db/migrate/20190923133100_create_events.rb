class CreateEvents < ActiveRecord::Migration[6.0]
  def change
    create_table :events do |t|
      t.belongs_to :sport, foreign_key: true
      t.string :teamA
      t.string :teamB
      t.text :description

      t.timestamps
    end
  end
end
