class CreateTextMsgs < ActiveRecord::Migration
  def change
    create_table :text_msgs do |t|
      t.string :AccountSid
      t.string :Body
      t.string :ToZip
      t.string :FromState
      t.string :ToCity
      t.string :SmsSid
      t.string :ToState
      t.string :To
      t.string :ToCountry
      t.string :FromCountry
      t.string :SmsMessageSid
      t.string :ApiVersion
      t.string :FromCity
      t.string :SmsStatus
      t.string :From
      t.string :FromZip

      t.timestamps
    end
  end
end
