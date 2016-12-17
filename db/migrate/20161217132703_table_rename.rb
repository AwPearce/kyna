class TableRename < ActiveRecord::Migration[5.0]
    def change
      rename_table :stores, :items

      create_table :articles do |t|
        t.string :title
        t.string :author
        t.text :message
        t.string :img
        t.string :category
        t.text :description
        t.string :commenter
        t.text :comments
        t.timestamps
    end
  end
end
