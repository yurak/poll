class PollsController < ApplicationController
	respond_to :html, :json

	before_filter :find_poll, only: [:question, :show, :question_size]

	def index
		@polls = Poll.all
		respond_with @poll
	end

	def show
		respond_with @poll
	end

	def question
		question = @poll.questions.not_answered.first
		
		if question
	    response = {
	        question: question,
	        answers: question.answers,
	        size: @poll.questions.size,
	        corret_answers_size: Question.all.correct_asnwers.size
	    }		
		else
			response = {
				 poll_status: "complete",
				 corret_answers_size: Question.all.correct_asnwers.size,
				 size: @poll.questions.size
	    }
	  end
	  respond_with response
	end

	def find_poll
		@poll = Poll.find(params[:id])
	end
end
