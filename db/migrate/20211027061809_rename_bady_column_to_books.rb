class RenameBadyColumnToBooks < ActiveRecord::Migration[5.2]
  def change
    rename_column :books, :bady, :body
  end
end
