namespace :alexa_skills_crawler do
  desc "Import Alexa Skills from Amazon website to the database"

  # task connected_car: :environment do
  #
  #   class Skill < ActiveRecord::Base
  #
  #     attr_reader :name
  #     attr_reader :dev
  #     attr_reader :desc
  #   end
  #
  #   class ApplicationController < ActionController::Base
  #     protect_from_forgery with: :exception
  #
  #     require 'mechanize'
  #     require 'open-uri'
  #     require 'nokogiri'
  #
  #     agent = Mechanize.new
  #     agent.user_agent = 'Chrome/41.0.2228.0'
  #     url = "https://www.amazon.com/s/ref=sr_pg_1?rh=n%3A13727921011%2Cn%3A%2113727922011%2Cn%3A14284820011&ie=UTF8&qid=1502312618&ajr=0"
  #     page = agent.get(url)
  #     loop do
  #       if link = page.link_with(:class => "pagnNext")
  #         skills = page.parser.css('.s-item-container')
  #         skills.each do |skill|
  #           Skill.create(
  #             name: skill.css('h2').text,
  #             dev: skill.css('.a-row.a-spacing-none>span').text,
  #             desc: skill.css('.a-unordered-list>span').text,
  #             category: 'Connected Car')
  #         end
  #         page = link.click
  #       else
  #         skills = page.parser.css('.s-item-container')
  #         skills.each do |skill|
  #           Skill.create(
  #             name: skill.css('h2').text,
  #             dev: skill.css('.a-row.a-spacing-none>span').text,
  #             desc: skill.css('.a-unordered-list>span').text,
  #             category: 'Connected Car')
  #         end
  #         break
  #       end
  #     end
  #   end
  # end
  #
  # task connected_car_1: :environment do
  #
  #   class Skill < ActiveRecord::Base
  #
  #     attr_reader :name
  #     attr_reader :dev
  #     attr_reader :desc
  #   end
  #
  #   class ApplicationController < ActionController::Base
  #     protect_from_forgery with: :exception
  #
  #     require 'mechanize'
  #     require 'open-uri'
  #     require 'nokogiri'
  #
  #     agent = Mechanize.new
  #     agent.user_agent = 'Chrome/41.0.2228.0'
  #     url = "https://www.amazon.com/s/ref=sr_pg_1?rh=n%3A13727921011%2Cn%3A%2113727922011%2Cn%3A14284820011&ie=UTF8&qid=1502312618&ajr=0"
  #     page = agent.get(url)
  #     loop do
  #       if link = page.link_with(:class => "pagnNext")
  #         apps = page.parser.css('.s-item-container')
  #         apps.each do |app|
  #           name = app.css('h2').text
  #           skill = Skill.find_or_initialize_by(name: name)
  #           skill.dev = app.css('.a-row.a-spacing-none>span').text
  #           skill.desc = app.css('.a-unordered-list>span').text
  #           skill.category = 'Connected Car'
  #           skill.save!
  #         end
  #         page = link.click
  #       else
  #         apps = page.parser.css('.s-item-container')
  #         apps.each do |app|
  #           name = app.css('h2').text
  #           skill = Skill.find_or_initialize_by(name: name)
  #           skill.dev = app.css('.a-row.a-spacing-none>span').text
  #           skill.desc = app.css('.a-unordered-list>span').text
  #           skill.category = 'Connected Car'
  #           skill.save!
  #         end
  #         break
  #       end
  #     end
  #   end
  # end

  task connected_car_1: :environment do

    class Skill < ActiveRecord::Base

      attr_reader :name
      attr_reader :dev
      attr_reader :desc
    end

    class ApplicationController < ActionController::Base
      protect_from_forgery with: :exception

      require 'mechanize'
      require 'open-uri'
      require 'nokogiri'

      agent = Mechanize.new
      agent.user_agent = 'Chrome/41.0.2228.0'
      url = "https://www.amazon.com/s/ref=sr_pg_1?rh=n%3A13727921011%2Cn%3A%2113727922011%2Cn%3A14284820011&ie=UTF8&qid=1502312618&ajr=0"
      page = agent.get(url)
      loop do
        if link = page.link_with(:class => "pagnNext")
          apps = page.parser.css('.s-item-container')
          apps.each do |app|
            name = app.css('h2').text
            skill = Skill.find_or_initialize_by(name: name)
            skill.dev = app.css('.a-row.a-spacing-none>span').text
            skill.desc = app.css('.a-unordered-list>span').text
            skill.category = 'Connected Car'
            skill.save!
          end
          page = link.click
        else
          apps = page.parser.css('.s-item-container')
          apps.each do |app|
            name = app.css('h2').text
            skill = Skill.find_or_initialize_by(name: name)
            skill.dev = app.css('.a-row.a-spacing-none>span').text
            skill.desc = app.css('.a-unordered-list>span').text
            skill.category = 'Connected Car'
            skill.save!
          end
          break
        end
      end
    end
  end

end
