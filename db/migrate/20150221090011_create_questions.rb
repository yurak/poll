class CreateQuestions < ActiveRecord::Migration
  def change
    create_table :questions do |t|
    	t.string  :content
    	t.integer :order_number
    	t.boolean :multiple_choice, default: false
    	t.text  :answered
    	t.integer :poll_id
			t.boolean :correct_answered, default: false
      t.timestamps null: false
    end
  end
end