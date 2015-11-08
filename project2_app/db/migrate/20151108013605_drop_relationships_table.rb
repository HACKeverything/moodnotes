class DropRelationshipsTable < ActiveRecord::Migration
  def down
  	drop_table :relationships
  end
end
