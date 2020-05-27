class CreateCourses < ActiveRecord::Migration[6.0]
  def change
    create_table :courses do |t|
      t.string :title, null: false
      t.text :description, null: false
      t.references :coach, foreign_key: true
      t.timestamps null: false
    end
  end
end
