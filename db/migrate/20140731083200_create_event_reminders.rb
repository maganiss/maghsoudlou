class CreateEventReminders < ActiveRecord::Migration
  def change
    create_table :event_reminders do |t|
      t.integer :user_id
      t.string :subject
      t.text :description
      t.datetime :event_date
      t.datetime :reminder_date
      t.string :publicity

      t.timestamps
    end
  end
end
