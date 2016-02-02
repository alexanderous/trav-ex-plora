class CollaborationsController < ApplicationController
	def new
		@collaboration = Collaboration.new
	end

	def create
		@collaboration = Collaboration.new(collaboration_params)

		# respond_to do |format|
		if @collaboration.save
	  	    redirect_to root_path
	  	    flash[:success] = "Thanks for reaching out! We'll get back to you as soon as we can."
	  	    UserMailer.collaboration_request_confirmation_email(@collaboration).deliver
	  	    UserMailer.notify_trepic_collaboration_request_email(@collaboration).deliver
	  	else
	  		flash[:error] = "Oh no, something went wrong. Try making a few changes."
	  		render 'new'
	  	end
	end

	def show
		@collaboration = Collaboration.find(params[:id])
	end

	def index
	end

	private
		def collaboration_params
	    	params.require(:collaboration).permit(:name, :email, :phone, :message)
		end
end
