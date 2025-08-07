class Quiz < ApplicationRecord
    include Statusable
    
    has_many :quiz_questions, dependent: :destroy

    before_validation :set_description, if: -> {description.blank?}
    validates :title, presence: true

    private

    def set_description
        self.description ||= "Default description for #{title}"
    end
end
