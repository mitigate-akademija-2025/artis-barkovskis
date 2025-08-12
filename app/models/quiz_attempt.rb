class QuizAttempt < ApplicationRecord
  belongs_to :quiz
  belongs_to :user

  validates :score, presence: true
  #validates :user_id, uniqueness: { scope: :quiz_id, message: "has already attempted this quiz" }
end