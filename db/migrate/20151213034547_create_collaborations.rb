class CreateCollaborations < ActiveRecord::Migration
  def change
    create_table :collaborations do |t|
      t.string :name
      t.string :email
      t.string :phone
      t.text :message
    end
  end
end