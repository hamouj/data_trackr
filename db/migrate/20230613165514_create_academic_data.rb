class CreateAcademicData < ActiveRecord::Migration[7.0]
  def change
    create_table :academic_data do |t|
      t.references :academic_goal, null: false, foreign_key: true
      t.integer :number_correct
      t.datetime :date

      t.timestamps
    end
  end
end
