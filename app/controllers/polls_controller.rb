class PollsController < ApplicationController
	respond_to :html
	def index
		@poll = Poll.first
		respond_with @poll
	end


	def show
	end
end
