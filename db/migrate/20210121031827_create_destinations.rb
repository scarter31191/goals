class CreateDestinations < ActiveRecord::Migration[6.0]
  def change
    create_table :destinations do |t|
      t.string :location
      t.text :description
      t.date :date_traveled
      t.boolean :goal_reached
      t.integer :traveler_id
      t.integer :goal_id

      t.timestamps
    end
  end
end
