class Skill < ApplicationRecord
  belongs_to :developers, :foreign_key => "dev_name", :primary_key => "dev"
end
