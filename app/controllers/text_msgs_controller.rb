class TextMsgsController < ApplicationController
  
  def index
    @text_msgs = TextMsg.all
  end
  
  def create
    if params[:text_msg]
      @text_msg = TextMsg.new(params[:text_msg])
    else
      @text_msg = TextMsg.new(params)
    end
    
end
