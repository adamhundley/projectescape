class JqueryController < ApplicationController

  def playfile
    @message = params[:message]
    Hint.first.update_attributes(message:@message)
  end

  def clear_hint
    Hint.first.update_attributes(message:"")
  end

  def update_text
    @message = Hint.first.message
  end

  def custom_message
    Hint.first.update_attributes(message:params[:message])
    render :nothing => true
  end

  def index
    render layout: "countdown"
  end
end
