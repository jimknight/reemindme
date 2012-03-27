class AddProcessedToReminders < ActiveRecord::Migration
  def change
    add_column :reminders, :processed, :boolean, :default => false

  end
end
