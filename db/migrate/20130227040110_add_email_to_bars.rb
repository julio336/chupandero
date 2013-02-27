class AddEmailToBars < ActiveRecord::Migration
  def change
    add_column :bars, :email, :string
  end
end
