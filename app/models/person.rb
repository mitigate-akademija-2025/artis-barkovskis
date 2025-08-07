class Person < ApplicationRecord
    has_many :quizzes, dependent: :destroy
    has_many :quiz_questions, through: :quizzes
    
    validates :first_name, presence: true
    validates :last_name, presence: true

    def full_name
        "#{first_name} #{last_name}"
    end
end
