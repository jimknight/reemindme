require 'spec_helper'

describe "text_msgs/new" do
  before(:each) do
    assign(:text_msg, stub_model(TextMsg,
      :AccountSid => "MyString",
      :Body => "MyString",
      :ToZip => "MyString",
      :FromState => "MyString",
      :ToCity => "MyString",
      :SmsSid => "MyString",
      :ToState => "MyString",
      :To => "MyString",
      :ToCountry => "MyString",
      :FromCountry => "MyString",
      :SmsMessageSid => "MyString",
      :ApiVersion => "MyString",
      :FromCity => "MyString",
      :SmsStatus => "MyString",
      :From => "MyString",
      :FromZip => "MyString"
    ).as_new_record)
  end

  it "renders new text_msg form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => text_msgs_path, :method => "post" do
      assert_select "input#text_msg_AccountSid", :name => "text_msg[AccountSid]"
      assert_select "input#text_msg_Body", :name => "text_msg[Body]"
      assert_select "input#text_msg_ToZip", :name => "text_msg[ToZip]"
      assert_select "input#text_msg_FromState", :name => "text_msg[FromState]"
      assert_select "input#text_msg_ToCity", :name => "text_msg[ToCity]"
      assert_select "input#text_msg_SmsSid", :name => "text_msg[SmsSid]"
      assert_select "input#text_msg_ToState", :name => "text_msg[ToState]"
      assert_select "input#text_msg_To", :name => "text_msg[To]"
      assert_select "input#text_msg_ToCountry", :name => "text_msg[ToCountry]"
      assert_select "input#text_msg_FromCountry", :name => "text_msg[FromCountry]"
      assert_select "input#text_msg_SmsMessageSid", :name => "text_msg[SmsMessageSid]"
      assert_select "input#text_msg_ApiVersion", :name => "text_msg[ApiVersion]"
      assert_select "input#text_msg_FromCity", :name => "text_msg[FromCity]"
      assert_select "input#text_msg_SmsStatus", :name => "text_msg[SmsStatus]"
      assert_select "input#text_msg_From", :name => "text_msg[From]"
      assert_select "input#text_msg_FromZip", :name => "text_msg[FromZip]"
    end
  end
end
