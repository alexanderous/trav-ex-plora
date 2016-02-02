class CreateSupports < ActiveRecord::Migration
  def change
    create_table :supports do |t|
      t.string :name
      t.string :email
      t.string :type
      t.text :message
    end
  end
end
