require 'spec_helper'

describe "text_msgs/show" do
  before(:each) do
    @text_msg = assign(:text_msg, stub_model(TextMsg,
      :AccountSid => "Account Sid",
      :Body => "Body",
      :ToZip => "To Zip",
      :FromState => "From State",
      :ToCity => "To City",
      :SmsSid => "Sms Sid",
      :ToState => "To State",
      :To => "To",
      :ToCountry => "To Country",
      :FromCountry => "From Country",
      :SmsMessageSid => "Sms Message Sid",
      :ApiVersion => "Api Version",
      :FromCity => "From City",
      :SmsStatus => "Sms Status",
      :From => "From",
      :FromZip => "From Zip"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Account Sid/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Body/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/To Zip/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/From State/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/To City/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Sms Sid/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/To State/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/To/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/To Country/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/From Country/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Sms Message Sid/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Api Version/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/From City/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Sms Status/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/From/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/From Zip/)
  end
end
