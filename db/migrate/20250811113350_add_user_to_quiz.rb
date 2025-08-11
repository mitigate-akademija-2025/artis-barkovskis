class AddUserToQuiz < ActiveRecord::Migration[8.0]
  def change
    add_reference :quizzes, :user, foreign_key: true, null: false
    add_column :quizzes, :public, :boolean, default: false, null: false
  end
end
