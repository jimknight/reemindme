class Notify
  
  def self.send_text(message)
    require 'twilio-ruby'
    account_sid = ENV['TWILIO_ID']
    auth_token = ENV['TWILIO_SECRET']
    # set up a client to talk to the Twilio REST API
    @client = Twilio::REST::Client.new account_sid, auth_token
    @client.account.sms.messages.create(
      :from => ENV['TWILIO_PHONE'],
      :to => ENV['JIMS_PHONE'],
      :body => message
    )
  end
  
end