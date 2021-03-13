class CreateUserProfiles < ActiveRecord::Migration[6.1]
  def change
    create_table :user_profiles do |t|
      t.string :firstname, limit: 20
      t.string :lastname, limit: 20
      t.string :phone, limit: 15
      t.string :address
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
