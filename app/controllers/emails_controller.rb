class EmailsController < ApplicationController
  def index
    @incomplete_emails = Email.where(read: false)
    @complete_emails = Email.where(read: true)
  end

  def new
    @email = Email.new
  end

  def create
    @email = Email.create!(allowed_params)

    respond_to do |f|
    f.html { redirect_to emails_url }
    f.js
   end
  end


    def update
      @email = Email.find(params[:id])
      @email.update_attributes!(allowed_params)

      respond_to do |f|
      f.html { redirect_to emails_url }
      f.js
    end
    end

    def destroy
      @email = Email.destroy(params[:id])

      respond_to do |f|
      f.html { redirect_to emails_url }
      f.js

     end
    end

    private

    def allowed_params
      params.require(:email).permit(:object, :body, :read)
    end
end
