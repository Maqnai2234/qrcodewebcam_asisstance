class CreateAsistancees < ActiveRecord::Migration[5.0]
  def change
    create_table :asistancees do |t|
      t.datetime :date_admisision
      t.references :student, foreign_key: true

      t.timestamps
    end
  end
end
