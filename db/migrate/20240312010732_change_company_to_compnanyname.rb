class ChangeCompanyToCompnanyname < ActiveRecord::Migration[7.1]
  def change
    rename_column :jobs, :cname, :compnayname
  end
  end

