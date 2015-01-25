class AlterCourses < ActiveRecord::Migration
  def up
    add_column("courses","time",:string, :limit => 15 ,:default => "12h00 - 13h00")
    add_column("courses","location",:string, :limit => 10, :default => "H-535")
  end
  
  def down
    remove_column("courses","location")
    remove_column("courses","time")
  end
end
