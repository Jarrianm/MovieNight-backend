class CreateMatchings < ActiveRecord::Migration[5.2]
  def change
    create_table :matchings do |t|
      t.integer :matched_user_id
      t.integer :user_id
      t.timestamps
    end
  end
end
