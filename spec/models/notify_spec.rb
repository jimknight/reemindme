require 'spec_helper'

describe Notify do
  describe "send_text" do
    it "should send a text to Jim" do
      Notify.send_text('test message').should_not be_nil
    end
  end
end