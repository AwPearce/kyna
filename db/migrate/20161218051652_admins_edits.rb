class AdminsEdits < ActiveRecord::Migration[5.0]
  change_table :admins do |t|
    t.remove :name
    t.string :full_name, null: false, default: ""

  end
end
