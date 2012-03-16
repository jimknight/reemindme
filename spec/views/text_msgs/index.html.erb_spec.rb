require 'spec_helper'

describe "text_msgs/index" do
  before(:each) do
    assign(:text_msgs, [
      stub_model(TextMsg,
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
      ),
      stub_model(TextMsg,
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
      )
    ])
  end

  it "renders a list of text_msgs" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Account Sid".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Body".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "To Zip".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "From State".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "To City".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Sms Sid".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "To State".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "To".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "To Country".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "From Country".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Sms Message Sid".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Api Version".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "From City".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Sms Status".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "From".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "From Zip".to_s, :count => 2
  end
end
