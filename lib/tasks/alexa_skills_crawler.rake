namespace :alexa_skills_crawler do
  desc 'Import Alexa Skills from Amazon website to the database'

  class Skill < ActiveRecord::Base
    attr_reader :name
    attr_reader :dev
    attr_reader :desc
    attr_reader :rating
    attr_reader :number_of_rating
    attr_reader :category
  end

  require 'mechanize'
  require 'open-uri'
  require 'nokogiri'

  def get_page(url)
    agent = Mechanize.new
    agent.user_agent = 'Chrome/50.0.2228.0'
    return agent.get(url)
  end

  def get_apps(page, category)
    apps = page.parser.css('.s-item-container')
    apps.each do |app|
      name = app.css('h2').text
      dev = app.css('.a-row.a-spacing-none>span').text
      desc = app.css('.a-unordered-list>span').text
      rating = app.css('.a-icon.a-icon-star').text
      number_of_rating = app.css('.a-size-small.a-link-normal.a-text-normal').text
      skill = Skill.find_or_initialize_by(name: name)
      skill.update_attributes(name: name, dev: dev, desc: desc, category: category, rating: rating, number_of_rating: number_of_rating)
      skill.save!
      puts skill.inspect
    end
  end

  def save_to_db(url, cateogory)
    page = get_page(url)
    loop do
      get_apps(page, cateogory)
      link = page.link_with(:class => "pagnNext")
      if link
        page = link.click
      else
        break
      end
    end
  end

  task business_and_finance: :environment do
    url = 'https://www.amazon.com/s/ref=lp_13727921011_nr_n_0?fst=as%3Aoff&rh=n%3A13727921011%2Cn%3A%2113727922011%2Cn%3A14284819011&bbn=13727922011&ie=UTF8&qid=1519839812&rnid=13727922011'
    save_to_db(url, 'Business & Finance')
  end

  task communication: :environment do
    url = 'https://www.amazon.com/s/ref=lp_13727921011_nr_n_1?fst=as%3Aoff&rh=n%3A13727921011%2Cn%3A%2113727922011%2Cn%3A14284865011&bbn=13727922011&ie=UTF8&qid=1519839812&rnid=13727922011'
    save_to_db(url, 'Communication')
  end

  task connected_car: :environment do
    url = 'https://www.amazon.com/s/ref=lp_13727921011_nr_n_2?fst=as%3Aoff&rh=n%3A13727921011%2Cn%3A%2113727922011%2Cn%3A14284820011&bbn=13727922011&ie=UTF8&qid=1519839812&rnid=13727922011'
    save_to_db(url, 'Connected Car')
  end

  task education_and_reference: :environment do
    url = 'https://www.amazon.com/s/ref=lp_13727921011_nr_n_3?fst=as%3Aoff&rh=n%3A13727921011%2Cn%3A%2113727922011%2Cn%3A14284821011&bbn=13727922011&ie=UTF8&qid=1519839812&rnid=13727922011'
    save_to_db(url, 'Education & Reference')
  end

  task food_and_drink: :environment do
    url = 'https://www.amazon.com/s/ref=lp_13727921011_nr_n_4?fst=as%3Aoff&rh=n%3A13727921011%2Cn%3A%2113727922011%2Cn%3A14284822011&bbn=13727922011&ie=UTF8&qid=1519839812&rnid=13727922011'
    save_to_db(url, 'Food & Drink')
  end

  task games_trivia_and_accessories: :environment do
    url = 'https://www.amazon.com/s/ref=lp_13727921011_nr_n_5?fst=as%3Aoff&rh=n%3A13727921011%2Cn%3A%2113727922011%2Cn%3A14284827011&bbn=13727922011&ie=UTF8&qid=1519839812&rnid=13727922011'
    save_to_db(url, 'Games, Trivia & Accessories')
  end

  task health_and_fitness: :environment do
    url = 'https://www.amazon.com/s/ref=lp_13727921011_nr_n_6?fst=as%3Aoff&rh=n%3A13727921011%2Cn%3A%2113727922011%2Cn%3A14284831011&bbn=13727922011&ie=UTF8&qid=1519839812&rnid=13727922011'
    save_to_db(url, 'Health & Fitness')
  end

  task home_services: :environment do
    url = 'https://www.amazon.com/s/ref=lp_13727921011_nr_n_7?fst=as%3Aoff&rh=n%3A13727921011%2Cn%3A%2113727922011%2Cn%3A17388364011&bbn=13727922011&ie=UTF8&qid=1519839812&rnid=13727922011'
    save_to_db(url, 'Home Services')
  end

  task kids: :environment do
    url = 'https://www.amazon.com/s/ref=lp_13727921011_nr_n_8?fst=as%3Aoff&rh=n%3A13727921011%2Cn%3A%2113727922011%2Cn%3A14284832011&bbn=13727922011&ie=UTF8&qid=1519839812&rnid=13727922011'
    save_to_db(url, 'Kids')
  end

  task lifestyle: :environment do
    url = 'https://www.amazon.com/s/ref=lp_13727921011_nr_n_9?fst=as%3Aoff&rh=n%3A13727921011%2Cn%3A%2113727922011%2Cn%3A14284837011&bbn=13727922011&ie=UTF8&qid=1519839812&rnid=13727922011'
    save_to_db(url, 'Lifestyle')
  end

  task local: :environment do
    url = 'https://www.amazon.com/s/ref=lp_13727921011_nr_n_10?fst=as%3Aoff&rh=n%3A13727921011%2Cn%3A%2113727922011%2Cn%3A14284844011&bbn=13727922011&ie=UTF8&qid=1519839812&rnid=13727922011'
    save_to_db(url, 'Local')
  end

  task movies_and_tv: :environment do
    url = 'https://www.amazon.com/s/ref=lp_13727921011_nr_n_11?fst=as%3Aoff&rh=n%3A13727921011%2Cn%3A%2113727922011%2Cn%3A14284846011&bbn=13727922011&ie=UTF8&qid=1519839812&rnid=13727922011'
    save_to_db(url, 'Movies & TV')
  end

  task music_and_audio: :environment do
    url = 'https://www.amazon.com/s/ref=lp_13727921011_nr_n_12?fst=as%3Aoff&rh=n%3A13727921011%2Cn%3A%2113727922011%2Cn%3A14284851011&bbn=13727922011&ie=UTF8&qid=1519839812&rnid=13727922011'
    save_to_db(url, 'Music & Audio')
  end

  task news: :environment do
    url = 'https://www.amazon.com/s/ref=lp_13727921011_nr_n_13?fst=as%3Aoff&rh=n%3A13727921011%2Cn%3A%2113727922011%2Cn%3A14284857011&bbn=13727922011&ie=UTF8&qid=1519839812&rnid=13727922011'
    save_to_db(url, 'News')
  end

  task novelty_and_humor: :environment do
    url = 'https://www.amazon.com/s/ref=lp_13727921011_nr_n_14?fst=as%3Aoff&rh=n%3A13727921011%2Cn%3A%2113727922011%2Cn%3A14284858011&bbn=13727922011&ie=UTF8&qid=1519839812&rnid=13727922011'
    save_to_db(url, 'Novelty & Humor')
  end

  task productivity: :environment do
    url = 'https://www.amazon.com/s/ref=lp_13727921011_nr_n_15?fst=as%3Aoff&rh=n%3A13727921011%2Cn%3A%2113727922011%2Cn%3A14284859011&bbn=13727922011&ie=UTF8&qid=1519839812&rnid=13727922011'
    save_to_db(url, 'Productivity')
  end

  task shopping: :environment do
    url = 'https://www.amazon.com/s/ref=lp_13727921011_nr_n_16?fst=as%3Aoff&rh=n%3A13727921011%2Cn%3A%2113727922011%2Cn%3A14284862011&bbn=13727922011&ie=UTF8&qid=1519839812&rnid=13727922011'
    save_to_db(url, 'Shopping')
  end

  task smart_home: :environment do
    url = 'https://www.amazon.com/s/ref=lp_13727921011_nr_n_17?fst=as%3Aoff&rh=n%3A13727921011%2Cn%3A%2113727922011%2Cn%3A14284863011&bbn=13727922011&ie=UTF8&qid=1519839812&rnid=13727922011'
    save_to_db(url, 'Smart Home')
  end

  task social: :environment do
    url = 'https://www.amazon.com/s/ref=lp_13727921011_nr_n_18?fst=as%3Aoff&rh=n%3A13727921011%2Cn%3A%2113727922011%2Cn%3A14284864011&bbn=13727922011&ie=UTF8&qid=1519839812&rnid=13727922011'
    save_to_db(url, 'Social')
  end

  task sports: :environment do
    url = 'https://www.amazon.com/s/ref=lp_13727921011_nr_n_19?fst=as%3Aoff&rh=n%3A13727921011%2Cn%3A%2113727922011%2Cn%3A14284869011&bbn=13727922011&ie=UTF8&qid=1519839812&rnid=13727922011'
    save_to_db(url, 'Sports')
  end

  task travel_and_transportation: :environment do
    url = 'https://www.amazon.com/s/ref=lp_13727921011_nr_n_20?fst=as%3Aoff&rh=n%3A13727921011%2Cn%3A%2113727922011%2Cn%3A14284874011&bbn=13727922011&ie=UTF8&qid=1519839812&rnid=13727922011'
    save_to_db(url, 'Travel & Transportation')
  end

  task utilities: :environment do
    url = 'https://www.amazon.com/s/ref=lp_13727921011_nr_n_21?fst=as%3Aoff&rh=n%3A13727921011%2Cn%3A%2113727922011%2Cn%3A14284882011&bbn=13727922011&ie=UTF8&qid=1519839812&rnid=13727922011'
    save_to_db(url, 'Utilities')
  end

  task weather: :environment do
    url = 'https://www.amazon.com/s/ref=lp_13727921011_nr_n_22?fst=as%3Aoff&rh=n%3A13727921011%2Cn%3A%2113727922011%2Cn%3A14284889011&bbn=13727922011&ie=UTF8&qid=1519839812&rnid=13727922011'
    save_to_db(url, 'Weather')
  end

  task crawler_all: :environment do
    Rake::Task['alexa_skills_crawler:business_and_finance'].execute
    Rake::Task['alexa_skills_crawler:communication'].execute
    Rake::Task['alexa_skills_crawler:connected_car'].execute
    Rake::Task['alexa_skills_crawler:education_and_reference'].execute
    Rake::Task['alexa_skills_crawler:food_and_drink'].execute
    Rake::Task['alexa_skills_crawler:games_trivia_and_accessories'].execute
    Rake::Task['alexa_skills_crawler:health_and_fitness'].execute
    Rake::Task['alexa_skills_crawler:home_services'].execute
    Rake::Task['alexa_skills_crawler:kids'].execute
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
