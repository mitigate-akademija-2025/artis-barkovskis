#quiz attempts controller
class QuizAttemptsController < ApplicationController
  before_action :set_quiz, only: [:new, :create]

  def take
    @quiz = Quiz.find(params[:id])
  end

  def new
    # @quiz is set by before_action
  end

  def create
    answers = params[:answers] || {}
    score = 0

    answers.each do |question_id, option_id|
      question = Question.find(question_id)
      option = Option.find(option_id)
      score += question.points if option.is_correct?
    end

    @quiz_attempt = QuizAttempt.new(
      user: current_user,
      quiz: @quiz,
      score: score
    )

    if @quiz_attempt.save
      redirect_to quiz_completed_path(@quiz, score: score), notice: "Quiz completed! You scored #{score} points."
    else
      flash.now[:alert] = "There was an error saving your attempt."
      render "quizzes/completed", status: :unprocessable_entity
    end
  end

  private

  def set_quiz
    @quiz = Quiz.find(params[:quiz_id])
  end
end
