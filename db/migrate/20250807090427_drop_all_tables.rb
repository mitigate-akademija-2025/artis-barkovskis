class DropAllTables < ActiveRecord::Migration[8.0]
  def change
    drop_table :quiz_questions
    drop_table :quizzes
    drop_table :users
    drop_table :people
    drop_table :addresses



  end
end
