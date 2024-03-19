class UpdateJobsTable < ActiveRecord::Migration[7.1]
  def change
    add_column :jobs, :job_title, :string
    add_column :jobs, :company, :string
    add_column :jobs, :job_description, :string
    add_column :jobs, :company_url, :string
    add_column :jobs, :date, :date
    add_column :jobs, :point_of_contact, :string
    add_column :jobs, :job_reference, :string
    add_column :jobs, :tech_stack, :string
    remove_column :jobs, :compnayname, :string
  end
end