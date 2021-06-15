class CreateCollaborators < ActiveRecord::Migration[5.2]
  def change
    create_table :collaborators do |t|
      t.string :name
      t.string :cpf
      t.date :birthday
      t.string :address
      t.integer :number
      t.string :neighborhood
      t.string :city
      t.string :state
      t.string :postal_code
      t.string :personal_phone_number
      t.string :reference
      t.string :reference_phone_number
      t.string :salary

      t.timestamps
    end
  end
end
