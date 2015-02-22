class Question < ActiveRecord::Base
	has_many :answers
	belongs_to :poll

	serialize :answered

	scope :not_answered, -> { where(answered: nil) }
	scope :correct_asnwers, -> { where(correct_answered: true) }

	before_update :correct_answer

	def correct_answer
		self.correct_answered = true if answers.map {|a| a.id.to_s if a.correct == true}.compact == answered
	end
end
