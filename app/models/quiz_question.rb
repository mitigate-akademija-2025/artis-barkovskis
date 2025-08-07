class QuizQuestion < ApplicationRecord
    include Statusable
    
    belongs_to :quiz

    after_save :add_first_person_full_name_to_content

    def add_first_person_full_name_to_content
        return if people.empty?
        person = people.first
        return if content.include?(person.full_name)

        self.content = "#{content}  #{person.full_name}"
        save
    end
end
