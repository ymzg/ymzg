class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.integer :event_id
      t.string :author
      t.string :content

      t.timestamps
    end
  end
end
