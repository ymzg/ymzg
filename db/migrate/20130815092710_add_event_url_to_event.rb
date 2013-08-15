class AddEventUrlToEvent < ActiveRecord::Migration
  def change
    add_column :events, :event_url, :string
  end
end
