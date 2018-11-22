class EmailsController < ApplicationController

  def index
    @emails = Email.all
  end

  def show
    @email = Email.find(params[:id])

    respond_to do |format|
       format.html { redirect_to email_path(params[:id]) }
       format.js   ## cela va rendre show.js.erb*
    end
  end

  def destroy
    respond_to do |format|
       format.html { redirect_to email_path(params[:id]) }
       format.js
     end
     Email.find(params[:id]).destroy

  end

end
