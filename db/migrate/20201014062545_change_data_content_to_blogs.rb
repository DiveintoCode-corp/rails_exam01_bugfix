class ChangeDataContentToBlogs < ActiveRecord::Migration[5.2]
  def change
    change_column :blogs, :content, :text
  end
end
