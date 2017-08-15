class CreateDevs < ActiveRecord::Migration[5.0]
  def change
    create_table :developers do |t|
      t.string :dev_name

      t.timestamps
    end
  end
end
