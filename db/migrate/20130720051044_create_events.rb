class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|

      t.string   "title"
      t.string   "location"
      t.text     "description"
      t.string   "image_file_name"
      t.string   "image_content_type"
      t.integer  "image_file_size"
      t.datetime "image_updated_at"
      t.date     "event_date"
      t.datetime "created_at"
      t.datetime "updated_at"
      t.string   "event_url"

    end
  end
end
