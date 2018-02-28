namespace :alexa_skills_crawler do
  desc "Import Alexa Skills from Amazon website to the database"

  task business_and_finance: :environment do

    class Skill < ActiveRecord::Base
      attr_reader :name
      attr_reader :dev
      attr_reader :desc
      attr_reader :rating
      attr_reader :number_of_rating
      attr_reader :category
    end

    class ApplicationController < ActionController::Base
      protect_from_forgery with: :exception

      require 'mechanize'
      require 'open-uri'
      require 'nokogiri'

      agent = Mechanize.new
      agent.user_agent = 'Chrome/64.0.3282.186'
      url = "https://www.amazon.com/s/ref=lp_13727921011_nr_n_0?fst=as%3Aoff&rh=n%3A13727921011%2Cn%3A%2113727922011%2Cn%3A14284819011&bbn=13727922011&ie=UTF8&qid=1502381971&rnid=13727922011"
      page = agent.get(url)
      loop do
        if link = page.link_with(:class => "pagnNext")
          apps = page.parser.css('.s-item-container')
          apps.each do |app|
            name = app.css('h2').text
            dev = app.css('.a-row.a-spacing-none>span').text
            desc = app.css('.a-unordered-list>span').text
            category = 'Business & Finance'
            rating = app.css('.a-icon.a-icon-star').text
            number_of_rating = app.css('.a-size-small.a-link-normal.a-text-normal').text
            skill = Skill.find_or_initialize_by(name: name)
            skill.update_attributes({name: name, dev: dev, desc: desc, category: category, rating: rating, number_of_rating: number_of_rating})
            skill.save!
          end
          page = link.click
        else
          apps = page.parser.css('.s-item-container')
          apps.each do |app|
            name = app.css('h2').text
            dev = app.css('.a-row.a-spacing-none>span').text
            desc = app.css('.a-unordered-list>span').text
            category = 'Business & Finance'
            rating = app.css('.a-icon.a-icon-star').text
            number_of_rating = app.css('.a-size-small.a-link-normal.a-text-normal').text
            skill = Skill.find_or_initialize_by(name: name)
            skill.update_attributes({name: name, dev: dev, desc: desc, category: category, rating: rating, number_of_rating: number_of_rating})
            skill.save!
          end
          break
        end
        sleep(5)
      end
    end
  end

  task connected_car: :environment do

    class Skill < ActiveRecord::Base
      attr_reader :name
      attr_reader :dev
      attr_reader :desc
      attr_reader :rating
      attr_reader :number_of_rating
      attr_reader :category
    end

    class ApplicationController < ActionController::Base
      protect_from_forgery with: :exception

      require 'mechanize'
      require 'open-uri'
      require 'nokogiri'

      agent = Mechanize.new
      agent.user_agent = 'Chrome/50.0.2228.0'
      url = "https://www.amazon.com/s/ref=sr_pg_1?rh=n%3A13727921011%2Cn%3A%2113727922011%2Cn%3A14284820011&ie=UTF8&qid=1502312618&ajr=0"
      page = agent.get(url)
      loop do
        if link = page.link_with(:class => "pagnNext")
          apps = page.parser.css('.s-item-container')
          apps.each do |app|
            name = app.css('h2').text
            dev = app.css('.a-row.a-spacing-none>span').text
            desc = app.css('.a-unordered-list>span').text
            category = 'Connected Car'
            rating = app.css('.a-icon.a-icon-star').text
            number_of_rating = app.css('.a-size-small.a-link-normal.a-text-normal').text
            skill = Skill.find_or_initialize_by(name: name)
            skill.update_attributes({name: name, dev: dev, desc: desc, category: category, rating: rating, number_of_rating: number_of_rating})
            skill.save!
          end
          page = link.click
        else
          apps = page.parser.css('.s-item-container')
          apps.each do |app|
            name = app.css('h2').text
            dev = app.css('.a-row.a-spacing-none>span').text
            desc = app.css('.a-unordered-list>span').text
            category = 'Connected Car'
            rating = app.css('.a-icon.a-icon-star').text
            number_of_rating = app.css('.a-size-small.a-link-normal.a-text-normal').text
            skill = Skill.find_or_initialize_by(name: name)
            skill.update_attributes({name: name, dev: dev, desc: desc, category: category, rating: rating, number_of_rating: number_of_rating})
            skill.save!
          end
          break
        end
      end
    end
  end

  task education_and_reference: :environment do

    class Skill < ActiveRecord::Base
      attr_reader :name
      attr_reader :dev
      attr_reader :desc
      attr_reader :rating
      attr_reader :number_of_rating
      attr_reader :category
    end

    class ApplicationController < ActionController::Base
      protect_from_forgery with: :exception

      require 'mechanize'
      require 'open-uri'
      require 'nokogiri'

      agent = Mechanize.new
      agent.user_agent = 'Chrome/63.0.3239'
      url = "https://www.amazon.com/s/ref=lp_13727921011_nr_n_3?fst=as\%3Aoff&rh=n\%3A13727921011\%2Cn\%3A\%2113727922011\%2Cn\%3A14284821011&bbn=13727922011&ie=UTF8&qid=1502382540&rnid=13727922011"
      page = agent.get(url)
      loop do
        if link = page.link_with(:class => "pagnNext")
          apps = page.parser.css('.s-item-container')
          apps.each do |app|
            name = app.css('h2').text
            dev = app.css('.a-row.a-spacing-none>span').text
            desc = app.css('.a-unordered-list>span').text
            category = 'Education & Reference'
            rating = app.css('.a-icon.a-icon-star').text
            number_of_rating = app.css('.a-size-small.a-link-normal.a-text-normal').text
            skill = Skill.find_or_initialize_by(name: name)
            skill.update_attributes({name: name, dev: dev, desc: desc, category: category, rating: rating, number_of_rating: number_of_rating})
            skill.save!
          end
          page = link.click
        else
          apps = page.parser.css('.s-item-container')
          apps.each do |app|
            name = app.css('h2').text
            dev = app.css('.a-row.a-spacing-none>span').text
            desc = app.css('.a-unordered-list>span').text
            category = 'Education & Reference'
            rating = app.css('.a-icon.a-icon-star').text
            number_of_rating = app.css('.a-size-small.a-link-normal.a-text-normal').text
            skill = Skill.find_or_initialize_by(name: name)
            skill.update_attributes({name: name, dev: dev, desc: desc, category: category, rating: rating, number_of_rating: number_of_rating})
            skill.save!
          end
          break
        end
      end
    end
  end

  task food_and_drink: :environment do

    class Skill < ActiveRecord::Base
      attr_reader :name
      attr_reader :dev
      attr_reader :desc
      attr_reader :rating
      attr_reader :number_of_rating
      attr_reader :category
    end

    class ApplicationController < ActionController::Base
      protect_from_forgery with: :exception

      require 'mechanize'
      require 'open-uri'
      require 'nokogiri'

      agent = Mechanize.new
      agent.user_agent = 'Chrome/64.0.3282.186'
      url = "https://www.amazon.com/s/ref=lp_13727921011_nr_n_4?fst=as\%3Aoff&rh=n\%3A13727921011\%2Cn\%3A\%2113727922011\%2Cn\%3A14284822011&bbn=13727922011&ie=UTF8&qid=1502383155&rnid=13727922011"
      page = agent.get(url)
      loop do
        if link = page.link_with(:class => "pagnNext")
          apps = page.parser.css('.s-item-container')
          apps.each do |app|
            name = app.css('h2').text
            dev = app.css('.a-row.a-spacing-none>span').text
            desc = app.css('.a-unordered-list>span').text
            category = 'Food & Drink'
            rating = app.css('.a-icon.a-icon-star').text
            number_of_rating = app.css('.a-size-small.a-link-normal.a-text-normal').text
            skill = Skill.find_or_initialize_by(name: name)
            skill.update_attributes({name: name, dev: dev, desc: desc, category: category, rating: rating, number_of_rating: number_of_rating})
            skill.save!
          end
          page = link.click
        else
          apps = page.parser.css('.s-item-container')
          apps.each do |app|
            name = app.css('h2').text
            dev = app.css('.a-row.a-spacing-none>span').text
            desc = app.css('.a-unordered-list>span').text
            category = 'Food & Drink'
            rating = app.css('.a-icon.a-icon-star').text
            number_of_rating = app.css('.a-size-small.a-link-normal.a-text-normal').text
            skill = Skill.find_or_initialize_by(name: name)
            skill.update_attributes({name: name, dev: dev, desc: desc, category: category, rating: rating, number_of_rating: number_of_rating})
            skill.save!
          end
          break
        end
        sleep 0.1
      end
    end
  end

  task games_trivia_and_accessories: :environment do

    class Skill < ActiveRecord::Base
      attr_reader :name
      attr_reader :dev
      attr_reader :desc
      attr_reader :rating
      attr_reader :number_of_rating
      attr_reader :category
    end

    class ApplicationController < ActionController::Base
      protect_from_forgery with: :exception

      require 'mechanize'
      require 'open-uri'
      require 'nokogiri'

      agent = Mechanize.new
      agent.user_agent = 'Chrome/63.0.3239'
      url = "https://www.amazon.com/s/ref=lp_13727921011_nr_n_5?fst=as%3Aoff&rh=n%3A13727921011%2Cn%3A%2113727922011%2Cn%3A14284827011&bbn=13727922011&ie=UTF8&qid=1502384327&rnid=13727922011"
      page = agent.get(url)
      loop do
        if link = page.link_with(:class => "pagnNext")
          apps = page.parser.css('.s-item-container')
          apps.each do |app|
            name = app.css('h2').text
            dev = app.css('.a-row.a-spacing-none>span').text
            desc = app.css('.a-unordered-list>span').text
            category = 'Games, Trivia & Accessories'
            rating = app.css('.a-icon.a-icon-star').text
            number_of_rating = app.css('.a-size-small.a-link-normal.a-text-normal').text
            skill = Skill.find_or_initialize_by(name: name)
            skill.update_attributes({name: name, dev: dev, desc: desc, category: category, rating: rating, number_of_rating: number_of_rating})
            skill.save!
          end
          page = link.click
        else
          apps = page.parser.css('.s-item-container')
          apps.each do |app|
            name = app.css('h2').text
            dev = app.css('.a-row.a-spacing-none>span').text
            desc = app.css('.a-unordered-list>span').text
            category = 'Games, Trivia & Accessories'
            rating = app.css('.a-icon.a-icon-star').text
            number_of_rating = app.css('.a-size-small.a-link-normal.a-text-normal').text
            skill = Skill.find_or_initialize_by(name: name)
            skill.update_attributes({name: name, dev: dev, desc: desc, category: category, rating: rating, number_of_rating: number_of_rating})
            skill.save!
          end
          break
        end
        sleep 0.1
      end
    end
  end

  task lifestyle: :environment do

    class Skill < ActiveRecord::Base
      attr_reader :name
      attr_reader :dev
      attr_reader :desc
      attr_reader :rating
      attr_reader :number_of_rating
      attr_reader :category
    end

    class ApplicationController < ActionController::Base
      protect_from_forgery with: :exception

      require 'mechanize'
      require 'open-uri'
      require 'nokogiri'

      agent = Mechanize.new
      agent.user_agent = 'Chrome/63.0.3239'
      url = "https://www.amazon.com/s/ref=lp_13727921011_nr_n_7?fst=as%3Aoff&rh=n%3A13727921011%2Cn%3A%2113727922011%2Cn%3A14284837011&bbn=13727922011&ie=UTF8&qid=1502384327&rnid=13727922011"
      page = agent.get(url)
      loop do
        if link = page.link_with(:class => "pagnNext")
          apps = page.parser.css('.s-item-container')
          apps.each do |app|
            name = app.css('h2').text
            dev = app.css('.a-row.a-spacing-none>span').text
            desc = app.css('.a-unordered-list>span').text
            category = 'Lifestyle'
            rating = app.css('.a-icon.a-icon-star').text
            number_of_rating = app.css('.a-size-small.a-link-normal.a-text-normal').text
            skill = Skill.find_or_initialize_by(name: name)
            skill.update_attributes({name: name, dev: dev, desc: desc, category: category, rating: rating, number_of_rating: number_of_rating})
            skill.save!
          end
          page = link.click
        else
          apps = page.parser.css('.s-item-container')
          apps.each do |app|
            name = app.css('h2').text
            dev = app.css('.a-row.a-spacing-none>span').text
            desc = app.css('.a-unordered-list>span').text
            category = 'Lifestyle'
            rating = app.css('.a-icon.a-icon-star').text
            number_of_rating = app.css('.a-size-small.a-link-normal.a-text-normal').text
            skill = Skill.find_or_initialize_by(name: name)
            skill.update_attributes({name: name, dev: dev, desc: desc, category: category, rating: rating, number_of_rating: number_of_rating})
            skill.save!
          end
          break
        end
      end
    end
  end

  task local: :environment do

    class Skill < ActiveRecord::Base
      attr_reader :name
      attr_reader :dev
      attr_reader :desc
      attr_reader :rating
      attr_reader :number_of_rating
      attr_reader :category
    end

    class ApplicationController < ActionController::Base
      protect_from_forgery with: :exception

      require 'mechanize'
      require 'open-uri'
      require 'nokogiri'

      agent = Mechanize.new
      agent.user_agent = 'Chrome/63.0.3239'
      url = "https://www.amazon.com/s/ref=lp_13727921011_nr_n_8?fst=as\%3Aoff&rh=n\%3A13727921011\%2Cn\%3A\%2113727922011\%2Cn\%3A14284844011&bbn=13727922011&ie=UTF8&qid=1502384327&rnid=13727922011"
      page = agent.get(url)
      loop do
        if link = page.link_with(:class => "pagnNext")
          apps = page.parser.css('.s-item-container')
          apps.each do |app|
            name = app.css('h2').text
            dev = app.css('.a-row.a-spacing-none>span').text
            desc = app.css('.a-unordered-list>span').text
            category = 'Local'
            rating = app.css('.a-icon.a-icon-star').text
            number_of_rating = app.css('.a-size-small.a-link-normal.a-text-normal').text
            skill = Skill.find_or_initialize_by(name: name)
            skill.update_attributes({name: name, dev: dev, desc: desc, category: category, rating: rating, number_of_rating: number_of_rating})
            skill.save!
          end
          page = link.click
        else
          apps = page.parser.css('.s-item-container')
          apps.each do |app|
            name = app.css('h2').text
            dev = app.css('.a-row.a-spacing-none>span').text
            desc = app.css('.a-unordered-list>span').text
            category = 'Local'
            rating = app.css('.a-icon.a-icon-star').text
            number_of_rating = app.css('.a-size-small.a-link-normal.a-text-normal').text
            skill = Skill.find_or_initialize_by(name: name)
            skill.update_attributes({name: name, dev: dev, desc: desc, category: category, rating: rating, number_of_rating: number_of_rating})
            skill.save!
          end
          break
        end
      end
    end
  end

  task movies_and_tv: :environment do

    class Skill < ActiveRecord::Base
      attr_reader :name
      attr_reader :dev
      attr_reader :desc
      attr_reader :rating
      attr_reader :number_of_rating
      attr_reader :category
    end

    class ApplicationController < ActionController::Base
      protect_from_forgery with: :exception

      require 'mechanize'
      require 'open-uri'
      require 'nokogiri'

      agent = Mechanize.new
      agent.user_agent = 'Chrome/50.0.2228.0'
      url = "https://www.amazon.com/s/ref=lp_13727921011_nr_n_9?fst=as%3Aoff&rh=n%3A13727921011%2Cn%3A%2113727922011%2Cn%3A14284846011&bbn=13727922011&ie=UTF8&qid=1502384327&rnid=13727922011"
      page = agent.get(url)
      loop do
        if link = page.link_with(:class => "pagnNext")
          apps = page.parser.css('.s-item-container')
          apps.each do |app|
            name = app.css('h2').text
            dev = app.css('.a-row.a-spacing-none>span').text
            desc = app.css('.a-unordered-list>span').text
            category = 'Movies & TV'
            rating = app.css('.a-icon.a-icon-star').text
            number_of_rating = app.css('.a-size-small.a-link-normal.a-text-normal').text
            skill = Skill.find_or_initialize_by(name: name)
            skill.update_attributes({name: name, dev: dev, desc: desc, category: category, rating: rating, number_of_rating: number_of_rating})
            skill.save!
          end
          page = link.click
        else
          apps = page.parser.css('.s-item-container')
          apps.each do |app|
            name = app.css('h2').text
            dev = app.css('.a-row.a-spacing-none>span').text
            desc = app.css('.a-unordered-list>span').text
            category = 'Movies & TV'
            rating = app.css('.a-icon.a-icon-star').text
            number_of_rating = app.css('.a-size-small.a-link-normal.a-text-normal').text
            skill = Skill.find_or_initialize_by(name: name)
            skill.update_attributes({name: name, dev: dev, desc: desc, category: category, rating: rating, number_of_rating: number_of_rating})
            skill.save!
          end
          break
        end
      end
    end
  end

  task music_and_audio: :environment do

    class Skill < ActiveRecord::Base
      attr_reader :name
      attr_reader :dev
      attr_reader :desc
      attr_reader :rating
      attr_reader :number_of_rating
      attr_reader :category
    end

    class ApplicationController < ActionController::Base
      protect_from_forgery with: :exception

      require 'mechanize'
      require 'open-uri'
      require 'nokogiri'

      agent = Mechanize.new
      agent.user_agent = 'Chrome/50.0.2228.0'
      url = "https://www.amazon.com/s/ref=lp_13727921011_nr_n_10?fst=as%3Aoff&rh=n%3A13727921011%2Cn%3A%2113727922011%2Cn%3A14284851011&bbn=13727922011&ie=UTF8&qid=1502384327&rnid=13727922011"
      page = agent.get(url)
      loop do
        if link = page.link_with(:class => "pagnNext")
          apps = page.parser.css('.s-item-container')
          apps.each do |app|
            name = app.css('h2').text
            dev = app.css('.a-row.a-spacing-none>span').text
            desc = app.css('.a-unordered-list>span').text
            category = 'Music & Audio'
            rating = app.css('.a-icon.a-icon-star').text
            number_of_rating = app.css('.a-size-small.a-link-normal.a-text-normal').text
            skill = Skill.find_or_initialize_by(name: name)
            skill.update_attributes({name: name, dev: dev, desc: desc, category: category, rating: rating, number_of_rating: number_of_rating})
            skill.save!
          end
          page = link.click
        else
          apps = page.parser.css('.s-item-container')
          apps.each do |app|
            name = app.css('h2').text
            dev = app.css('.a-row.a-spacing-none>span').text
            desc = app.css('.a-unordered-list>span').text
            category = 'Music & Audio'
            rating = app.css('.a-icon.a-icon-star').text
            number_of_rating = app.css('.a-size-small.a-link-normal.a-text-normal').text
            skill = Skill.find_or_initialize_by(name: name)
            skill.update_attributes({name: name, dev: dev, desc: desc, category: category, rating: rating, number_of_rating: number_of_rating})
            skill.save!
          end
          break
        end
      end
    end
  end

  task news: :environment do

    class Skill < ActiveRecord::Base
      attr_reader :name
      attr_reader :dev
      attr_reader :desc
      attr_reader :rating
      attr_reader :number_of_rating
      attr_reader :category
    end

    class ApplicationController < ActionController::Base
      protect_from_forgery with: :exception

      require 'mechanize'
      require 'open-uri'
      require 'nokogiri'

      agent = Mechanize.new
      agent.user_agent = 'Chrome/50.0.2228.0'
      url = "https://www.amazon.com/s/ref=lp_13727921011_nr_n_11?fst=as%3Aoff&rh=n%3A13727921011%2Cn%3A%2113727922011%2Cn%3A14284857011&bbn=13727922011&ie=UTF8&qid=1502384327&rnid=13727922011"
      page = agent.get(url)
      loop do
        if link = page.link_with(:class => "pagnNext")
          apps = page.parser.css('.s-item-container')
          apps.each do |app|
            name = app.css('h2').text
            dev = app.css('.a-row.a-spacing-none>span').text
            desc = app.css('.a-unordered-list>span').text
            category = 'News'
            rating = app.css('.a-icon.a-icon-star').text
            number_of_rating = app.css('.a-size-small.a-link-normal.a-text-normal').text
            skill = Skill.find_or_initialize_by(name: name)
            skill.update_attributes({name: name, dev: dev, desc: desc, category: category, rating: rating, number_of_rating: number_of_rating})
            skill.save!
          end
          page = link.click
        else
          apps = page.parser.css('.s-item-container')
          apps.each do |app|
            name = app.css('h2').text
            dev = app.css('.a-row.a-spacing-none>span').text
            desc = app.css('.a-unordered-list>span').text
            category = 'News'
            rating = app.css('.a-icon.a-icon-star').text
            number_of_rating = app.css('.a-size-small.a-link-normal.a-text-normal').text
            skill = Skill.find_or_initialize_by(name: name)
            skill.update_attributes({name: name, dev: dev, desc: desc, category: category, rating: rating, number_of_rating: number_of_rating})
            skill.save!
          end
          break
        end
      end
    end
  end

  task novelty_and_humor: :environment do

    class Skill < ActiveRecord::Base
      attr_reader :name
      attr_reader :dev
      attr_reader :desc
      attr_reader :rating
      attr_reader :number_of_rating
      attr_reader :category
    end

    class ApplicationController < ActionController::Base
      protect_from_forgery with: :exception

      require 'mechanize'
      require 'open-uri'
      require 'nokogiri'

      agent = Mechanize.new
      agent.user_agent = 'Chrome/50.0.2228.0'
      url = "https://www.amazon.com/s/ref=lp_13727921011_nr_n_12?fst=as%3Aoff&rh=n%3A13727921011%2Cn%3A%2113727922011%2Cn%3A14284858011&bbn=13727922011&ie=UTF8&qid=1502384327&rnid=13727922011"
      page = agent.get(url)
      loop do
        if link = page.link_with(:class => "pagnNext")
          apps = page.parser.css('.s-item-container')
          apps.each do |app|
            name = app.css('h2').text
            dev = app.css('.a-row.a-spacing-none>span').text
            desc = app.css('.a-unordered-list>span').text
            category = 'Novelty & Humor'
            rating = app.css('.a-icon.a-icon-star').text
            number_of_rating = app.css('.a-size-small.a-link-normal.a-text-normal').text
            skill = Skill.find_or_initialize_by(name: name)
            skill.update_attributes({name: name, dev: dev, desc: desc, category: category, rating: rating, number_of_rating: number_of_rating})
            skill.save!
          end
          page = link.click
        else
          apps = page.parser.css('.s-item-container')
          apps.each do |app|
            name = app.css('h2').text
            dev = app.css('.a-row.a-spacing-none>span').text
            desc = app.css('.a-unordered-list>span').text
            category = 'Novelty & Humor'
            rating = app.css('.a-icon.a-icon-star').text
            number_of_rating = app.css('.a-size-small.a-link-normal.a-text-normal').text
            skill = Skill.find_or_initialize_by(name: name)
            skill.update_attributes({name: name, dev: dev, desc: desc, category: category, rating: rating, number_of_rating: number_of_rating})
            skill.save!
          end
          break
        end
      end
    end
  end

  task productivity: :environment do

    class Skill < ActiveRecord::Base
      attr_reader :name
      attr_reader :dev
      attr_reader :desc
      attr_reader :rating
      attr_reader :number_of_rating
      attr_reader :category
    end

    class ApplicationController < ActionController::Base
      protect_from_forgery with: :exception

      require 'mechanize'
      require 'open-uri'
      require 'nokogiri'

      agent = Mechanize.new
      agent.user_agent = 'Chrome/50.0.2228.0'
      url = "https://www.amazon.com/s/ref=lp_13727921011_nr_n_13?fst=as%3Aoff&rh=n%3A13727921011%2Cn%3A%2113727922011%2Cn%3A14284859011&bbn=13727922011&ie=UTF8&qid=1502384327&rnid=13727922011"
      page = agent.get(url)
      loop do
        if link = page.link_with(:class => "pagnNext")
          apps = page.parser.css('.s-item-container')
          apps.each do |app|
            name = app.css('h2').text
            dev = app.css('.a-row.a-spacing-none>span').text
            desc = app.css('.a-unordered-list>span').text
            category = 'Productivity'
            rating = app.css('.a-icon.a-icon-star').text
            number_of_rating = app.css('.a-size-small.a-link-normal.a-text-normal').text
            skill = Skill.find_or_initialize_by(name: name)
            skill.update_attributes({name: name, dev: dev, desc: desc, category: category, rating: rating, number_of_rating: number_of_rating})
            skill.save!
          end
          page = link.click
        else
          apps = page.parser.css('.s-item-container')
          apps.each do |app|
            name = app.css('h2').text
            dev = app.css('.a-row.a-spacing-none>span').text
            desc = app.css('.a-unordered-list>span').text
            category = 'Productivity'
            rating = app.css('.a-icon.a-icon-star').text
            number_of_rating = app.css('.a-size-small.a-link-normal.a-text-normal').text
            skill = Skill.find_or_initialize_by(name: name)
            skill.update_attributes({name: name, dev: dev, desc: desc, category: category, rating: rating, number_of_rating: number_of_rating})
            skill.save!
          end
          break
        end
      end
    end
  end

  task shopping: :environment do

    class Skill < ActiveRecord::Base
      attr_reader :name
      attr_reader :dev
      attr_reader :desc
      attr_reader :rating
      attr_reader :number_of_rating
      attr_reader :category
    end

    class ApplicationController < ActionController::Base
      protect_from_forgery with: :exception

      require 'mechanize'
      require 'open-uri'
      require 'nokogiri'

      agent = Mechanize.new
      agent.user_agent = 'Chrome/50.0.2228.0'
      url = "https://www.amazon.com/s/ref=lp_13727921011_nr_n_14?fst=as%3Aoff&rh=n%3A13727921011%2Cn%3A%2113727922011%2Cn%3A14284862011&bbn=13727922011&ie=UTF8&qid=1502384327&rnid=13727922011"
      page = agent.get(url)
      loop do
        if link = page.link_with(:class => "pagnNext")
          apps = page.parser.css('.s-item-container')
          apps.each do |app|
            name = app.css('h2').text
            dev = app.css('.a-row.a-spacing-none>span').text
            desc = app.css('.a-unordered-list>span').text
            category = 'Shopping'
            rating = app.css('.a-icon.a-icon-star').text
            number_of_rating = app.css('.a-size-small.a-link-normal.a-text-normal').text
            skill = Skill.find_or_initialize_by(name: name)
            skill.update_attributes({name: name, dev: dev, desc: desc, category: category, rating: rating, number_of_rating: number_of_rating})
            skill.save!
          end
          page = link.click
        else
          apps = page.parser.css('.s-item-container')
          apps.each do |app|
            name = app.css('h2').text
            dev = app.css('.a-row.a-spacing-none>span').text
            desc = app.css('.a-unordered-list>span').text
            category = 'Shopping'
            rating = app.css('.a-icon.a-icon-star').text
            number_of_rating = app.css('.a-size-small.a-link-normal.a-text-normal').text
            skill = Skill.find_or_initialize_by(name: name)
            skill.update_attributes({name: name, dev: dev, desc: desc, category: category, rating: rating, number_of_rating: number_of_rating})
            skill.save!
          end
          break
        end
      end
    end
  end

  task smart_home: :environment do

    class Skill < ActiveRecord::Base
      attr_reader :name
      attr_reader :dev
      attr_reader :desc
      attr_reader :rating
      attr_reader :number_of_rating
      attr_reader :category
    end

    class ApplicationController < ActionController::Base
      protect_from_forgery with: :exception

      require 'mechanize'
      require 'open-uri'
      require 'nokogiri'

      agent = Mechanize.new
      agent.user_agent = 'Chrome/50.0.2228.0'
      url = "https://www.amazon.com/s/ref=lp_13727921011_nr_n_15?fst=as%3Aoff&rh=n%3A13727921011%2Cn%3A%2113727922011%2Cn%3A14284863011&bbn=13727922011&ie=UTF8&qid=1502387332&rnid=13727922011"
      page = agent.get(url)
      loop do
        if link = page.link_with(:class => "pagnNext")
          apps = page.parser.css('.s-item-container')
          apps.each do |app|
            name = app.css('h2').text
            dev = app.css('.a-row.a-spacing-none>span').text
            desc = app.css('.a-unordered-list>span').text
            category = 'Smart Home'
            rating = app.css('.a-icon.a-icon-star').text
            number_of_rating = app.css('.a-size-small.a-link-normal.a-text-normal').text
            skill = Skill.find_or_initialize_by(name: name)
            skill.update_attributes({name: name, dev: dev, desc: desc, category: category, rating: rating, number_of_rating: number_of_rating})
            skill.save!
          end
          page = link.click
        else
          apps = page.parser.css('.s-item-container')
          apps.each do |app|
            name = app.css('h2').text
            dev = app.css('.a-row.a-spacing-none>span').text
            desc = app.css('.a-unordered-list>span').text
            category = 'Smart Home'
            rating = app.css('.a-icon.a-icon-star').text
            number_of_rating = app.css('.a-size-small.a-link-normal.a-text-normal').text
            skill = Skill.find_or_initialize_by(name: name)
            skill.update_attributes({name: name, dev: dev, desc: desc, category: category, rating: rating, number_of_rating: number_of_rating})
            skill.save!
          end
          break
        end
      end
    end
  end

  task social: :environment do

    class Skill < ActiveRecord::Base
      attr_reader :name
      attr_reader :dev
      attr_reader :desc
      attr_reader :rating
      attr_reader :number_of_rating
      attr_reader :category
    end

    class ApplicationController < ActionController::Base
      protect_from_forgery with: :exception

      require 'mechanize'
      require 'open-uri'
      require 'nokogiri'

      agent = Mechanize.new
      agent.user_agent = 'Chrome/50.0.2228.0'
      url = "https://www.amazon.com/s/ref=lp_13727921011_nr_n_16?fst=as%3Aoff&rh=n%3A13727921011%2Cn%3A%2113727922011%2Cn%3A14284864011&bbn=13727922011&ie=UTF8&qid=1502387332&rnid=13727922011"
      page = agent.get(url)
      loop do
        if link = page.link_with(:class => "pagnNext")
          apps = page.parser.css('.s-item-container')
          apps.each do |app|
            name = app.css('h2').text
            dev = app.css('.a-row.a-spacing-none>span').text
            desc = app.css('.a-unordered-list>span').text
            category = 'Social'
            rating = app.css('.a-icon.a-icon-star').text
            number_of_rating = app.css('.a-size-small.a-link-normal.a-text-normal').text
            skill = Skill.find_or_initialize_by(name: name)
            skill.update_attributes({name: name, dev: dev, desc: desc, category: category, rating: rating, number_of_rating: number_of_rating})
            skill.save!
          end
          page = link.click
        else
          apps = page.parser.css('.s-item-container')
          apps.each do |app|
            name = app.css('h2').text
            dev = app.css('.a-row.a-spacing-none>span').text
            desc = app.css('.a-unordered-list>span').text
            category = 'Social'
            rating = app.css('.a-icon.a-icon-star').text
            number_of_rating = app.css('.a-size-small.a-link-normal.a-text-normal').text
            skill = Skill.find_or_initialize_by(name: name)
            skill.update_attributes({name: name, dev: dev, desc: desc, category: category, rating: rating, number_of_rating: number_of_rating})
            skill.save!
          end
          break
        end
      end
    end
  end

  task sports: :environment do

    class Skill < ActiveRecord::Base
      attr_reader :name
      attr_reader :dev
      attr_reader :desc
      attr_reader :rating
      attr_reader :number_of_rating
      attr_reader :category
    end

    class ApplicationController < ActionController::Base
      protect_from_forgery with: :exception

      require 'mechanize'
      require 'open-uri'
      require 'nokogiri'

      agent = Mechanize.new
      agent.user_agent = 'Chrome/50.0.2228.0'
      url = "https://www.amazon.com/s/ref=lp_13727921011_nr_n_17?fst=as%3Aoff&rh=n%3A13727921011%2Cn%3A%2113727922011%2Cn%3A14284869011&bbn=13727922011&ie=UTF8&qid=1502387332&rnid=13727922011"
      page = agent.get(url)
      loop do
        if link = page.link_with(:class => "pagnNext")
          apps = page.parser.css('.s-item-container')
          apps.each do |app|
            name = app.css('h2').text
            dev = app.css('.a-row.a-spacing-none>span').text
            desc = app.css('.a-unordered-list>span').text
            category = 'Sports'
            rating = app.css('.a-icon.a-icon-star').text
            number_of_rating = app.css('.a-size-small.a-link-normal.a-text-normal').text
            skill = Skill.find_or_initialize_by(name: name)
            skill.update_attributes({name: name, dev: dev, desc: desc, category: category, rating: rating, number_of_rating: number_of_rating})
            skill.save!
          end
          page = link.click
        else
          apps = page.parser.css('.s-item-container')
          apps.each do |app|
            name = app.css('h2').text
            dev = app.css('.a-row.a-spacing-none>span').text
            desc = app.css('.a-unordered-list>span').text
            category = 'Sports'
            rating = app.css('.a-icon.a-icon-star').text
            number_of_rating = app.css('.a-size-small.a-link-normal.a-text-normal').text
            skill = Skill.find_or_initialize_by(name: name)
            skill.update_attributes({name: name, dev: dev, desc: desc, category: category, rating: rating, number_of_rating: number_of_rating})
            skill.save!
          end
          break
        end
      end
    end
  end

  task travel_and_transportation: :environment do

    class Skill < ActiveRecord::Base
      attr_reader :name
      attr_reader :dev
      attr_reader :desc
      attr_reader :rating
      attr_reader :number_of_rating
      attr_reader :category
    end

    class ApplicationController < ActionController::Base
      protect_from_forgery with: :exception

      require 'mechanize'
      require 'open-uri'
      require 'nokogiri'

      agent = Mechanize.new
      agent.user_agent = 'Chrome/50.0.2228.0'
      url = "https://www.amazon.com/s/ref=lp_13727921011_nr_n_18?fst=as%3Aoff&rh=n%3A13727921011%2Cn%3A%2113727922011%2Cn%3A14284874011&bbn=13727922011&ie=UTF8&qid=1502387332&rnid=13727922011"
      page = agent.get(url)
      loop do
        if link = page.link_with(:class => "pagnNext")
          apps = page.parser.css('.s-item-container')
          apps.each do |app|
            name = app.css('h2').text
            dev = app.css('.a-row.a-spacing-none>span').text
            desc = app.css('.a-unordered-list>span').text
            category = 'Travel & Transportation'
            rating = app.css('.a-icon.a-icon-star').text
            number_of_rating = app.css('.a-size-small.a-link-normal.a-text-normal').text
            skill = Skill.find_or_initialize_by(name: name)
            skill.update_attributes({name: name, dev: dev, desc: desc, category: category, rating: rating, number_of_rating: number_of_rating})
            skill.save!
          end
          page = link.click
        else
          apps = page.parser.css('.s-item-container')
          apps.each do |app|
            name = app.css('h2').text
            dev = app.css('.a-row.a-spacing-none>span').text
            desc = app.css('.a-unordered-list>span').text
            category = 'Travel & Transportation'
            rating = app.css('.a-icon.a-icon-star').text
            number_of_rating = app.css('.a-size-small.a-link-normal.a-text-normal').text
            skill = Skill.find_or_initialize_by(name: name)
            skill.update_attributes({name: name, dev: dev, desc: desc, category: category, rating: rating, number_of_rating: number_of_rating})
            skill.save!
          end
          break
        end
      end
    end
  end

  task utilities: :environment do

    class Skill < ActiveRecord::Base
      attr_reader :name
      attr_reader :dev
      attr_reader :desc
      attr_reader :rating
      attr_reader :number_of_rating
      attr_reader :category
    end

    class ApplicationController < ActionController::Base
      protect_from_forgery with: :exception

      require 'mechanize'
      require 'open-uri'
      require 'nokogiri'

      agent = Mechanize.new
      agent.user_agent = 'Chrome/50.0.2228.0'
      url = "https://www.amazon.com/s/ref=lp_13727921011_nr_n_19?fst=as%3Aoff&rh=n%3A13727921011%2Cn%3A%2113727922011%2Cn%3A14284882011&bbn=13727922011&ie=UTF8&qid=1502387332&rnid=13727922011"
      page = agent.get(url)
      loop do
        if link = page.link_with(:class => "pagnNext")
          apps = page.parser.css('.s-item-container')
          apps.each do |app|
            name = app.css('h2').text
            dev = app.css('.a-row.a-spacing-none>span').text
            desc = app.css('.a-unordered-list>span').text
            category = 'Utilities'
            rating = app.css('.a-icon.a-icon-star').text
            number_of_rating = app.css('.a-size-small.a-link-normal.a-text-normal').text
            skill = Skill.find_or_initialize_by(name: name)
            skill.update_attributes({name: name, dev: dev, desc: desc, category: category, rating: rating, number_of_rating: number_of_rating})
            skill.save!
          end
          page = link.click
        else
          apps = page.parser.css('.s-item-container')
          apps.each do |app|
            name = app.css('h2').text
            dev = app.css('.a-row.a-spacing-none>span').text
            desc = app.css('.a-unordered-list>span').text
            category = 'Utilities'
            rating = app.css('.a-icon.a-icon-star').text
            number_of_rating = app.css('.a-size-small.a-link-normal.a-text-normal').text
            skill = Skill.find_or_initialize_by(name: name)
            skill.update_attributes({name: name, dev: dev, desc: desc, category: category, rating: rating, number_of_rating: number_of_rating})
            skill.save!
          end
          break
        end
      end
    end
  end

  task weather: :environment do

    class Skill < ActiveRecord::Base
      attr_reader :name
      attr_reader :dev
      attr_reader :desc
      attr_reader :rating
      attr_reader :number_of_rating
      attr_reader :category
    end

    class ApplicationController < ActionController::Base
      protect_from_forgery with: :exception

      require 'mechanize'
      require 'open-uri'
      require 'nokogiri'

      agent = Mechanize.new
      agent.user_agent = 'Chrome/50.0.2228.0'
      url = "https://www.amazon.com/s/ref=lp_13727921011_nr_n_20?fst=as%3Aoff&rh=n%3A13727921011%2Cn%3A%2113727922011%2Cn%3A14284889011&bbn=13727922011&ie=UTF8&qid=1502387332&rnid=13727922011"
      page = agent.get(url)
      loop do
        if link = page.link_with(:class => "pagnNext")
          apps = page.parser.css('.s-item-container')
          apps.each do |app|
            name = app.css('h2').text
            dev = app.css('.a-row.a-spacing-none>span').text
            desc = app.css('.a-unordered-list>span').text
            category = 'Weather'
            rating = app.css('.a-icon.a-icon-star').text
            number_of_rating = app.css('.a-size-small.a-link-normal.a-text-normal').text
            skill = Skill.find_or_initialize_by(name: name)
            skill.update_attributes({name: name, dev: dev, desc: desc, category: category, rating: rating, number_of_rating: number_of_rating})
            skill.save!
          end
          page = link.click
        else
          apps = page.parser.css('.s-item-container')
          apps.each do |app|
            name = app.css('h2').text
            dev = app.css('.a-row.a-spacing-none>span').text
            desc = app.css('.a-unordered-list>span').text
            category = 'Weather'
            rating = app.css('.a-icon.a-icon-star').text
            number_of_rating = app.css('.a-size-small.a-link-normal.a-text-normal').text
            skill = Skill.find_or_initialize_by(name: name)
            skill.update_attributes({name: name, dev: dev, desc: desc, category: category, rating: rating, number_of_rating: number_of_rating})
            skill.save!
          end
          break
        end
      end
    end
  end

  task crawler_all: :environment do
    Rake::Task['alexa_skills_crawler:business_and_finance'].execute
    Rake::Task['alexa_skills_crawler:connected_car'].execute
    Rake::Task['alexa_skills_crawler:education_and_reference'].execute
    Rake::Task['alexa_skills_crawler:food_and_drink'].execute
    Rake::Task['alexa_skills_crawler:games_trivia_and_accessories'].execute
    Rake::Task['alexa_skills_crawler:lifestyle'].execute
    Rake::Task['alexa_skills_crawler:local'].execute
    Rake::Task['alexa_skills_crawler:movies_and_tv'].execute
    Rake::Task['alexa_skills_crawler:music_and_audio'].execute
    Rake::Task['alexa_skills_crawler:news'].execute
    Rake::Task['alexa_skills_crawler:novelty_and_humor'].execute
    Rake::Task['alexa_skills_crawler:productivity'].execute
    Rake::Task['alexa_skills_crawler:shopping'].execute
    Rake::Task['alexa_skills_crawler:smart_home'].execute
    Rake::Task['alexa_skills_crawler:social'].execute
    Rake::Task['alexa_skills_crawler:sports'].execute
    Rake::Task['alexa_skills_crawler:travel_and_transportation'].execute
    Rake::Task['alexa_skills_crawler:utilities'].execute
    Rake::Task['alexa_skills_crawler:weather'].execute
  end

end
