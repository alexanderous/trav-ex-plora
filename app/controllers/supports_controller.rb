class SupportsController < ApplicationController
	def new
		@support = Support.new
	end

	def create
		@support = Support.new(support_params)

		# respond_to do |format|
		if @support.save
	  	    redirect_to root_path
	  	    flash[:success] = "Thanks for reaching out! We'll get back to you as soon as we can."
	  	    UserMailer.support_confirmation_email(@support).deliver
	  	    if @support.category == "tech support"
	  	    	UserMailer.notify_trepic_tech_support_email(@support).deliver
	  	    else
	  	    	UserMailer.notify_trepic_booking_support_email(@support).deliver
	  	    end
	  	else
	  		flash[:error] = "Oh no, something went wrong. Try making a few changes."
	  		render 'new'
	  	end
	end

	def show
		@support = Support.find(params[:id])
	end

	def index
	end

	private
		def support_params
	    	params.require(:support).permit(:name, :email, :category, :message)
		end
end


#    respond_to do |format|
#      if @article.update_attributes(params[:article])
#        format.html { redirect_to @article, notice: 'Article was successfully updated.' }
#        format.json { head :no_content }
#      else
#        format.html { render action: "edit" }
#        format.json { render json: @article.errors, status: :unprocessable_entity }
#      end