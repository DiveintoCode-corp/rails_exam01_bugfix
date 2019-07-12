class ChangeCommentsNameNotNull < ActiveRecord::Migration[5.2]
  def change
    change_column_null :comments, :name, false
  end
end
