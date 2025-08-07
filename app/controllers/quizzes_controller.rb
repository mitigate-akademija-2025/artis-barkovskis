class QuizzesController < ApplicationController
    def index
        @title = "Quizzes"
    end

    def show
        @id = params[:id]
        #@quiz = Quizz.find params[:id]
    end
end