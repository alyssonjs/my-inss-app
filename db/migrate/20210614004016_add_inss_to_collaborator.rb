class AddInssToCollaborator < ActiveRecord::Migration[5.2]
  def change
    add_column :collaborators, :inss, :string
  end
end
