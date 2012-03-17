class TextMsg < ActiveRecord::Base
  
  after_save :create_request
  
private

  def create_request
    Request.create!(:phrase => self.Body)
  end
  
end
