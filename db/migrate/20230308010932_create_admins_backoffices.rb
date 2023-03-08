class CreateAdminsBackoffices < ActiveRecord::Migration[5.2]
  def change
    create_table :admins_backoffices do |t|
      t.string :password
      t.string :email
      t.string :full_name
      t.text :bio
      t.string :image

      t.timestamps
    end
  end
end
