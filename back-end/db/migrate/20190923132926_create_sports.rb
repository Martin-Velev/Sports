class CreateSports < ActiveRecord::Migration[6.0]
  def change
    create_table :sports do |t|
      t.text :description
    end
  end
end
