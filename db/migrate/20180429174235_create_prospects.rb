class CreateProspects < ActiveRecord::Migration[5.1]
  def change
    create_table :prospects do |t|
      t.string :first_name
      t.string :last_name
      t.string :job_title
      t.string :mail
      t.string :phone
      t.string :company

      t.timestamps
    end
  end
end
