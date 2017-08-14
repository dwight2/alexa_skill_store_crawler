class AddNumberOfRatingToSkills < ActiveRecord::Migration[5.0]
  def change
    add_column :skills, :number_of_rating, :string
  end
end
