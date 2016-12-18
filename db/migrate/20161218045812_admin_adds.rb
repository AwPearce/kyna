class AdminAdds < ActiveRecord::Migration[5.0]
  def change
    add_column :admins, :name, :string
    add_column :admins, :verified, :boolean
  end
end
