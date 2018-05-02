class CreateProspectts < ActiveRecord::Migration[5.1]
  def change
    create_table :prospectts do |t|
      t.string :first_name
      t.string :last_address
      t.string :mail
      t.string :company
      t.string :job_title
      t.string :phone

      t.timestamps
    end
  end
end
