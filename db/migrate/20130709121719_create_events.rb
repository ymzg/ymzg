class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.string :name
      t.string :describe
      t.datetime :data
      t.string :location

      t.timestamps
    end
  end
end
