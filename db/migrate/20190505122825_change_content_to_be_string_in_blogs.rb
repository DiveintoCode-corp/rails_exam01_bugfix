class ChangeContentToBeStringInBlogs < ActiveRecord::Migration[5.2]
  # ErrorCause: column :content type is Integer
  # FixReason: change column type Integer to String
  def up
    change_column :blogs, :content, :string
  end

  def down
    change_column :blogs, :content, :integer
  end
end
