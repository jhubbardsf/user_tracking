class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :name
      t.string :email
      t.string :city
      t.string :state
      t.string :zipcode

      t.timestamps null: false
    end
  end
end
