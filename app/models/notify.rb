class Notify
  
  def self.send_text(message)
    require 'twilio-ruby'
    @config = YAML.load_file("#{Rails.root}/config/twilio.yml")
    binding.pry
    account_sid = @config['twilio_id']
    auth_token = @config['twilio_secret']
    @client = Twilio::REST::Client.new account_sid, auth_token
    @client.account.sms.messages.create(
      :from => @config['twilio_phone'],
      :to => @config['jims_phone'],
      :body => message
    )
  end
  
end