class AddMediumToPosts < ActiveRecord::Migration[6.1]
  def change
    remove_column :posts, :content
    add_column :posts, :medium_url, :string
  end
end
