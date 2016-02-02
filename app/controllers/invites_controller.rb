class InvitesController < ApplicationController
	def new
	end

	def create
		@invite = Invite.new(invite_params)

		# respond_to do |format|
		if @invite.save
	  	    redirect_to root_path
	  	    flash[:success] = "Thanks for signing up! We'll send you an invite as soon as we can."
	  	    UserMailer.signup_confirmation_email(@invite).deliver
	  	    UserMailer.notify_trepic_signup_email(@invite).deliver
	  	else
	  		flash[:error] = "Oh no, that's not a valid email address. Try again."
	  		redirect_to root_path
	  		#render 'new'
	  	end
	end

	def show
		@invite = Invite.find(params[:id])
	end

	def index
	end

	private
		def invite_params
	    	params.require(:invite).permit(:email)
		end
end
