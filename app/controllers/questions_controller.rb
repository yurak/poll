class QuestionsController < ApplicationController
	 respond_to :json, :html

	def update
		@question = Question.find(params[:question_id])
		@question.update_attribute(:answered, params[:question_params])
		render nothing: true
	end
end
