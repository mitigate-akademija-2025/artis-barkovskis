class QuizPolicy
    attr_reader :user, :quiz

    def initialize(user, quiz)
        @user = user
        @quiz = quiz
    end

    def index?
        @user.admin?
    end
end