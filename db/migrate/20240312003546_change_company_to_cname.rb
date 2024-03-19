class ChangeCompanyToCname < ActiveRecord::Migration[7.1]
  def change
    rename_column :jobs, :company, :cname
  end
end
