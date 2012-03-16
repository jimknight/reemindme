require 'spec_helper'

describe "requests/edit" do
  before(:each) do
    @request = assign(:request, stub_model(Request,
      :phrase => "MyString"
    ))
  end

  it "renders the edit request form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => requests_path(@request), :method => "post" do
      assert_select "input#request_phrase", :name => "request[phrase]"
    end
  end
end
