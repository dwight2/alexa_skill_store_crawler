class Developer < ApplicationRecord
  has_many :skills, :foreign_key => "dev", :primary_key => "dev_name"
end
