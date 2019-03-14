class CreateIntrests < ActiveRecord::Migration[5.2]
  def change
    create_table :intrests do |t|

      t.timestamps
    end
  end
end
