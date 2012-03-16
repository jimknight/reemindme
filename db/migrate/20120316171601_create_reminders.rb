class CreateReminders < ActiveRecord::Migration
  def change
    create_table :reminders do |t|
      t.date :date
      t.datetime :time
      t.text :title

      t.timestamps
    end
  end
end
