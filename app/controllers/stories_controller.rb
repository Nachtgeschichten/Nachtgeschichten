class StoriesController < ApplicationController
before_filter :authenticate, only: :index

	def index
		@stories = Story.order("created_at DESC")
	end

	def new
		@story = Story.new
	end

	def create
		@story = Story.new(params[:story])
		if @story.save
			flash[:success] = "Story erfolgreich verschickt! Wir werden sie checken und dann bei Facebook posten!"
			redirect_to root_path
		else
			render :new
		end
	end

		protected

		def authenticate
		  authenticate_or_request_with_http_basic do |username, password|
		    username == User.first.name && password == User.first.name
		  end
		end
end