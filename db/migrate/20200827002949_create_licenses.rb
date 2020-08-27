class CreateLicenses < ActiveRecord::Migration[6.0]
  def change
    create_table :licenses do |t|
      t.string :name
      t.string :email
      t.string :serial
      t.boolean :active

      t.timestamps
    end
  end
end
