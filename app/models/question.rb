class Question < ActiveRecord::Base
	has_many :answers
	belongs_to :poll

	serialize :answered

	scope :not_answered, -> { where(answered: nil) }
	scope :correct_asnwer_size, -> { where(correct_answer: true) }

	after_update :correct_answer


	def correct_answer
		correct_answer = true if answers.map {|a| a.id.to_s if a.correct == true}.compact == answered
	end
end
