class AddRatingsToSkills < ActiveRecord::Migration[5.0]
  def change
    add_column :skills, :rating, :string
  end
end
