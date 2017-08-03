class FixUserColumnNames < ActiveRecord::Migration[5.1]
  def change
    rename_column :users, :nickname, :nickname
    rename_column :users, :avatar_url, :avatar_url
  end
end
