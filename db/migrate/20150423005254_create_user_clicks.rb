class CreateUserClicks < ActiveRecord::Migration
  def change
    create_table :user_clicks do |t|
      t.integer :user_id
      t.string :field

      t.timestamps null: false
    end
  end
end
