class AddNumberOfSkillsToDevelopers < ActiveRecord::Migration[5.0]
  def change
    add_column :developers, :number_of_skills, :integer
  end
end
