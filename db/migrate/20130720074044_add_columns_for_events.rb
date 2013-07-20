class AddColumnsForEvents < ActiveRecord::Migration
  def change
  	add_column :events , :ding_count, :integer, :default => 0
  end
end
