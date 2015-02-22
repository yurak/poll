class CreateQuestions < ActiveRecord::Migration
  def change
    create_table :questions do |t|
    	t.string :title
    	t.integer :correct_answer
    	t.integer :number
    	t.boolean :multiple_choice, default: false
    	t.string :correct_answer
    	t.integer :poll_id
      t.timestamps null: false
    end
  end
end