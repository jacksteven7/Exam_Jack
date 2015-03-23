class CreateQuestions < ActiveRecord::Migration
  def change
    create_table :questions do |t|
      t.text :title
      t.integer :type
      t.references :exam, index: true

      t.timestamps null: false
    end
    add_foreign_key :questions, :exams
  end
end
