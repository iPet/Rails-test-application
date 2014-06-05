class AddAvatarToUsers < ActiveRecord::Migration
  def change
    add_column :portfolios, :avatar, :string
  end
end
