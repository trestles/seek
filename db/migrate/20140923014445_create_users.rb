class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :auth_token
      t.string :ig_name
      t.timestamps
    end
  end
end
