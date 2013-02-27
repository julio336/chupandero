class AddPageToBars < ActiveRecord::Migration
  def change
    add_column :bars, :page, :text
  end
end
