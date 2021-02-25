class FixColumnName < ActiveRecord::Migration[6.1]
  def change
    rename_column :movies, :realeased_on, :released_on
  end
end
