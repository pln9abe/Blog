class AddAuthorToBlog < ActiveRecord::Migration[6.1]
  def change
    add_column :blogs, :author, :string
  end
end
