class TextMsg < ActiveRecord::Base
  
  after_save :create_request
  
private

  def create_request
    Request.create!(:phrase => self.Body)
  end
  
end

# == Schema Information
#
# Table name: text_msgs
#
#  id            :integer         not null, primary key
#  AccountSid    :string(255)
#  Body          :string(255)
#  ToZip         :string(255)
#  FromState     :string(255)
#  ToCity        :string(255)
#  SmsSid        :string(255)
#  ToState       :string(255)
#  To            :string(255)
#  ToCountry     :string(255)
#  FromCountry   :string(255)
#  SmsMessageSid :string(255)
#  ApiVersion    :string(255)
#  FromCity      :string(255)
#  SmsStatus     :string(255)
#  From          :string(255)
#  FromZip       :string(255)
#  created_at    :datetime        not null
#  updated_at    :datetime        not null
#

