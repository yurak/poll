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
		@question = @poll.questions.not_answered.first
		if @question.nil?
			partial = 'no_questions_left'
		else
			partial = 'question'
		end
		respond_to do |format|
			format.html { render partial: "polls/#{partial}", @question => :question if request.xhr? }
		end
	end

	def question_size
		size = @poll.questions.size
		respond_with size
	end

	def correct_answers
		@poll.answers.correct_asnwer_size.size
	end

	def find_poll
		@poll = Poll.find(params[:id])
	end
end
