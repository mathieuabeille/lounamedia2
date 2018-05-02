class AddLastNameToProspectts < ActiveRecord::Migration[5.1]
  def change
    add_column :prospectts, :last_name, :string
  end
end
