class AddToUsers < ActiveRecord::Migration[5.0]
  def change
    change_table :users do |f|
      f.boolean :admin, default: false
    end
  end
end
