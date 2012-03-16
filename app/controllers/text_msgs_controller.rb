class TextMsgsController < ApplicationController
  
  def index
    @text_msgs = TextMsg.all
  end
  
  def new
    @text_msg = TextMsg.new
  end
  
  def create
    if params[:text_msg]
      @text_msg = TextMsg.new(params[:text_msg])
    else
      @text_msg = TextMsg.new(:Body => params[:Body])
    end
    if @text_msg.save
      render :text => "<Response><Sms>test</Sms></Response>"
    else
      # report this error
      render :text => "<Response><Sms>something went wrong</Sms></Response>"
    end
  end
    
end
