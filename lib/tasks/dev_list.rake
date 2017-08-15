namespace :dev_list do
desc "update dev list from db"

  task update_dev: :environment do
    class Skill < ActiveRecord::Base
    end
    class ApplicationController < ActionController::Base
      @dev_names = Skill.all.uniq.pluck('dev')
      @dev_names.each do |dev_name|
        dev_name = dev_name
        developer = Developer.find_or_initialize_by(dev_name: dev_name)
        developer.update_attributes({dev_name: dev_name})
        developer.save!
      end
    end
  end

  task update_number_of_alexa_skills: :environment do
    class Skill < ActiveRecord::Base
    end
    class ApplicationController < ActionController::Base
      @devs = Developer.all
      @devs.each do |dev|
        dev_name = dev.dev_name
        developer = Developer.find_or_initialize_by(dev_name: dev_name)
        developer.update_attributes({number_of_skills: developer.skills.length.to_i})
        developer.save!
      end
    end
  end
end
