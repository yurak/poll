class QuestionsController < ApplicationController
	 respond_to :json

	 def index
	 	@questions = Question.all
	 	respond_with @questions
	 end
end
