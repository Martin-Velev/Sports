class CreateOutcomes < ActiveRecord::Migration[6.0]
  def change
    create_table :outcomes do |t|
      t.belongs_to :event, index: { unique: true }, foreign_key: true
      t.integer :scoreA
      t.integer :scoreB

      t.timestamps
    end
  end
end
