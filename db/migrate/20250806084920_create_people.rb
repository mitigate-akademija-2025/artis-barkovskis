class CreatePeople < ActiveRecord::Migration[8.0]
  def change
    create_table :people do |t|
      t.string :first_name, null: false 
      t.string :last_name, null: false
      t.timestamps
    end

    add_reference :quizzes, :person, foreign_key: true, null: true
    
    reversible do |direction|
      direction.up do
        person = Person.find_or_create_by(first_name: 'John', last_name: 'Doe')
        Quiz.update_all(person_id: person.id)
        change_column_null :quizzes, :person_id, false
      end
    end
  end
end
