class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.string :title
      t.string :location
      t.text :description
      t.attachment :image
      t.date :event_date
      
      t.timestamps
    end
  end
end
