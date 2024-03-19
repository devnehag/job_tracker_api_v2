class CreateChecklists < ActiveRecord::Migration[7.1]
  def change
    create_table :checklists do |t|
      t.string :title
      t.string :details
      t.references :job, null: false, foreign_key: true

      t.timestamps
    end
  end
end
