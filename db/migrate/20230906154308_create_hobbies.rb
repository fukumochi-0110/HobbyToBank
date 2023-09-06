class CreateHobbies < ActiveRecord::Migration[6.0]
  def change
    create_table :hobbies do |t|
      t.string :hobby, null: false
      t.references :user, foreign_key: true 
      t.integer :price, null: false
      t.timestamps
    end
  end
end
