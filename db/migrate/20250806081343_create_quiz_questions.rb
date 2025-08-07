class CreateQuizQuestions < ActiveRecord::Migration[8.0]
  def change
    create_table :quiz_questions do |t|
      t.references :quiz, null: false, foreign_key: true
      t.string :content, null: false
      t.integer :position, null: false, default: 0

      t.timestamps
    end
  end
end
