class CreateUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :users do |t|
      t.string :uid
      t.string :provider
      t.string :token
      t.string :nickname
      t.string :name
      t.string :email
      t.string :avatar_url

      t.timestamps
    end
  end
end
