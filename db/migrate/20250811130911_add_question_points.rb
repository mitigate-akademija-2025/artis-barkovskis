class AddQuestionPoints < ActiveRecord::Migration[8.0]
  def change
    add_column :questions, :points, :integer, default: 1, null: false
  end
end
