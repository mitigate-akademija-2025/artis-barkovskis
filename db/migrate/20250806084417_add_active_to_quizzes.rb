class AddActiveToQuizzes < ActiveRecord::Migration[8.0]
  def change
    add_column :quizzes, :active, :boolean, default: true, null: false
    add_column :quiz_questions, :active, :boolean, default: true, null: false
    remove_column :quizzes, :description, :text
  end
end
