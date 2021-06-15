class AddUserIdToCollaborator < ActiveRecord::Migration[5.2]
  def change
    add_reference :collaborators, :user, foreign_key: true
  end
end
