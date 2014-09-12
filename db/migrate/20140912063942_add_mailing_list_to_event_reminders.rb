class AddMailingListToEventReminders < ActiveRecord::Migration
  def change
    add_column :event_reminders, :mailing_list, :text
  end
end
