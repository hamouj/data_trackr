class CreateAcademicGoals < ActiveRecord::Migration[7.0]
  def change
    create_table :academic_goals do |t|
      t.references :student, null: false, foreign_key: true
      t.string :goal
      t.integer :trials
      t.integer :category, default: 0
      t.integer :frequency

      t.timestamps
    end
  end
end
