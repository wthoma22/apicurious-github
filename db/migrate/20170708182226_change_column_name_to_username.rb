class ChangeColumnNameTonickname < ActiveRecord::Migration[5.1]
  def change
    rename_column :users, :nickname, :nickname
  end
end
