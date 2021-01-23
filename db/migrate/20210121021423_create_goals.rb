class CreateGoals < ActiveRecord::Migration[6.0]
  def change
    create_table :goals do |t|
      t.string :name
      t.date :goal_date

      t.timestamps
    end
  end
end
