class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.string :title
      t.string :location
      t.text :description
      t.string :image_url
      t.date :event_date
      
      t.timestamps
    end
  end
end
