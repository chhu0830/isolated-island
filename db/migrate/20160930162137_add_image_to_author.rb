class AddImageToAuthor < ActiveRecord::Migration[5.0]
  def change
    add_column :authors, :image, :string
  end
end
