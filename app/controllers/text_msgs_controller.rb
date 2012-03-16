class TextMsgsController < ApplicationController
  # GET /text_msgs
  # GET /text_msgs.json
  def index
    @text_msgs = TextMsg.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @text_msgs }
    end
  end

  # GET /text_msgs/1
  # GET /text_msgs/1.json
  def show
    @text_msg = TextMsg.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @text_msg }
    end
  end

  # GET /text_msgs/new
  # GET /text_msgs/new.json
  def new
    @text_msg = TextMsg.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @text_msg }
    end
  end

  # GET /text_msgs/1/edit
  def edit
    @text_msg = TextMsg.find(params[:id])
  end

  # POST /text_msgs
  # POST /text_msgs.json
  def create
    @text_msg = TextMsg.new(params[:text_msg])

    respond_to do |format|
      if @text_msg.save
        format.html { redirect_to @text_msg, notice: 'Text msg was successfully created.' }
        format.json { render json: @text_msg, status: :created, location: @text_msg }
      else
        format.html { render action: "new" }
        format.json { render json: @text_msg.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /text_msgs/1
  # PUT /text_msgs/1.json
  def update
    @text_msg = TextMsg.find(params[:id])

    respond_to do |format|
      if @text_msg.update_attributes(params[:text_msg])
        format.html { redirect_to @text_msg, notice: 'Text msg was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @text_msg.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /text_msgs/1
  # DELETE /text_msgs/1.json
  def destroy
    @text_msg = TextMsg.find(params[:id])
    @text_msg.destroy

    respond_to do |format|
      format.html { redirect_to text_msgs_url }
      format.json { head :no_content }
    end
  end
end
