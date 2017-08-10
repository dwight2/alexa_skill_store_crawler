class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  require 'mechanize'
  require 'open-uri'
  require 'nokogiri'
  require 'capybara'

  def index
    render template: 'home'
  end

  class Skill
    def initialize(name, dev, desc)
      @name = name
      @dev = dev
      @desc = desc
    end
    attr_reader :name
    attr_reader :dev
    attr_reader :desc
  end

  def crawler(url)
    agent = Mechanize.new
    agent.user_agent = 'Chrome/41.0.2228.0'
    # agent.history_added = Proc.new { sleep 0.5 }
    page = agent.get(url)
    @skillsArray = []
    loop do
      if link = page.link_with(:class => "pagnNext")
        skills = page.parser.css('.s-item-container')
        skills.each do |skill|
          name = skill.css('h2').text
          dev = skill.css('.a-row.a-spacing-none>span').text
          desc = skill.css('.a-unordered-list>span').text
          @skillsArray << Skill.new(name, dev, desc)
        end
        page = link.click
      else
        skills = page.parser.css('.s-item-container')
        skills.each do |skill|
          name = skill.css('h2').text
          dev = skill.css('.a-row.a-spacing-none>span').text
          desc = skill.css('.a-unordered-list>span').text
          @skillsArray << Skill.new(name, dev, desc)
        end
        break
      end
    end
  end

  def business_and_finance_alexa_skills
    url = "https://www.amazon.com/s/ref=lp_13727921011_nr_n_0?fst=as%3Aoff&rh=n%3A13727921011%2Cn%3A%2113727922011%2Cn%3A14284819011&bbn=13727922011&ie=UTF8&qid=1502381971&rnid=13727922011"
    crawler(url)
    render template: 'business_and_finance_alexa_skills'
  end

  def communication_alexa_skills
    url = "https://www.amazon.com/s/ref=sr_pg_1?rh=n%3A13727921011%2Cn%3A%2113727922011%2Cn%3A14284864011%2Cn%3A14284865011&ie=UTF8&qid=1502376692&ajr=2"
    crawler(url)
    render template: 'communication_alexa_skills'
  end

  def connected_car_alexa_skills
    url = "https://www.amazon.com/s/ref=sr_pg_1?rh=n%3A13727921011%2Cn%3A%2113727922011%2Cn%3A14284820011&ie=UTF8&qid=1502312618&ajr=0"
    crawler(url)
    render template: 'connected_car_alexa_skills'
  end

  def education_and_reference_alexa_skills
    url = "https://www.amazon.com/s/ref=lp_13727921011_nr_n_3?fst=as%3Aoff&rh=n%3A13727921011%2Cn%3A%2113727922011%2Cn%3A14284821011&bbn=13727922011&ie=UTF8&qid=1502382540&rnid=13727922011"
    crawler(url)
    render template: 'education_and_reference_alexa_skills'
  end

  def food_and_drink_alexa_skills
    url = "https://www.amazon.com/s/ref=lp_13727921011_nr_n_4?fst=as%3Aoff&rh=n%3A13727921011%2Cn%3A%2113727922011%2Cn%3A14284822011&bbn=13727922011&ie=UTF8&qid=1502383155&rnid=13727922011"
    crawler(url)
    render template: 'food_and_drink_alexa_skills'
  end

  def food_and_drink_alexa_skills
    url = "https://www.amazon.com/s/ref=lp_13727921011_nr_n_4?fst=as%3Aoff&rh=n%3A13727921011%2Cn%3A%2113727922011%2Cn%3A14284822011&bbn=13727922011&ie=UTF8&qid=1502383155&rnid=13727922011"
    crawler(url)
    render template: 'food_and_drink_alexa_skills'
  end

  def games_trivia_and_accessories_alexa_skills
    url = "https://www.amazon.com/s/ref=lp_13727921011_nr_n_5?fst=as%3Aoff&rh=n%3A13727921011%2Cn%3A%2113727922011%2Cn%3A14284827011&bbn=13727922011&ie=UTF8&qid=1502384327&rnid=13727922011"
    crawler(url)
    render template: 'games_trivia_and_accessories_alexa_skills'
  end

  def health_and_fitness_alexa_skills
    url = "https://www.amazon.com/s/ref=lp_13727921011_nr_n_6?fst=as%3Aoff&rh=n%3A13727921011%2Cn%3A%2113727922011%2Cn%3A14284831011&bbn=13727922011&ie=UTF8&qid=1502384327&rnid=13727922011"
    crawler(url)
    render template: 'health_and_fitness_alexa_skills'
  end

  def lifestyle_alexa_skills
    url = "https://www.amazon.com/s/ref=lp_13727921011_nr_n_7?fst=as%3Aoff&rh=n%3A13727921011%2Cn%3A%2113727922011%2Cn%3A14284837011&bbn=13727922011&ie=UTF8&qid=1502384327&rnid=13727922011"
    crawler(url)
    render template: 'lifestyle_alexa_skills'
  end

  def local_alexa_skills
    url = "https://www.amazon.com/s/ref=lp_13727921011_nr_n_8?fst=as%3Aoff&rh=n%3A13727921011%2Cn%3A%2113727922011%2Cn%3A14284844011&bbn=13727922011&ie=UTF8&qid=1502384327&rnid=13727922011"
    crawler(url)
    render template: 'local_alexa_skills'
  end

  def movies_and_tv_alexa_skills
    url = "https://www.amazon.com/s/ref=lp_13727921011_nr_n_9?fst=as%3Aoff&rh=n%3A13727921011%2Cn%3A%2113727922011%2Cn%3A14284846011&bbn=13727922011&ie=UTF8&qid=1502384327&rnid=13727922011"
    crawler(url)
    render template: 'movies_and_tv_alexa_skills'
  end

  def music_and_audio_alexa_skills
    url = "https://www.amazon.com/s/ref=lp_13727921011_nr_n_10?fst=as%3Aoff&rh=n%3A13727921011%2Cn%3A%2113727922011%2Cn%3A14284851011&bbn=13727922011&ie=UTF8&qid=1502384327&rnid=13727922011"
    crawler(url)
    render template: 'music_and_audio_alexa_skills'
  end

  def news_alexa_skills
    url = "https://www.amazon.com/s/ref=lp_13727921011_nr_n_11?fst=as%3Aoff&rh=n%3A13727921011%2Cn%3A%2113727922011%2Cn%3A14284857011&bbn=13727922011&ie=UTF8&qid=1502384327&rnid=13727922011"
    crawler(url)
    render template: 'news_alexa_skills'
  end

  def novelty_and_humor_alexa_skills
    url = "https://www.amazon.com/s/ref=lp_13727921011_nr_n_12?fst=as%3Aoff&rh=n%3A13727921011%2Cn%3A%2113727922011%2Cn%3A14284858011&bbn=13727922011&ie=UTF8&qid=1502384327&rnid=13727922011"
    crawler(url)
    render template: 'novelty_and_humor_alexa_skills'
  end

  def productivity_alexa_skills
    url = "https://www.amazon.com/s/ref=lp_13727921011_nr_n_13?fst=as%3Aoff&rh=n%3A13727921011%2Cn%3A%2113727922011%2Cn%3A14284859011&bbn=13727922011&ie=UTF8&qid=1502384327&rnid=13727922011"
    crawler(url)
    render template: 'productivity_alexa_skills'
  end

  def shopping_alexa_skills
    url = "https://www.amazon.com/s/ref=lp_13727921011_nr_n_14?fst=as%3Aoff&rh=n%3A13727921011%2Cn%3A%2113727922011%2Cn%3A14284862011&bbn=13727922011&ie=UTF8&qid=1502384327&rnid=13727922011"
    crawler(url)
    render template: 'shopping_alexa_skills'
  end

  def smart_home_alexa_skills
    url = "https://www.amazon.com/s/ref=lp_13727921011_nr_n_15?fst=as%3Aoff&rh=n%3A13727921011%2Cn%3A%2113727922011%2Cn%3A14284863011&bbn=13727922011&ie=UTF8&qid=1502387332&rnid=13727922011"
    crawler(url)
    render template: 'smart_home_alexa_skills'
  end

  def social_alexa_skills
    url = "https://www.amazon.com/s/ref=lp_13727921011_nr_n_16?fst=as%3Aoff&rh=n%3A13727921011%2Cn%3A%2113727922011%2Cn%3A14284864011&bbn=13727922011&ie=UTF8&qid=1502387332&rnid=13727922011"
    crawler(url)
    render template: 'social_alexa_skills'
  end

  def sports_alexa_skills
    url = "https://www.amazon.com/s/ref=lp_13727921011_nr_n_17?fst=as%3Aoff&rh=n%3A13727921011%2Cn%3A%2113727922011%2Cn%3A14284869011&bbn=13727922011&ie=UTF8&qid=1502387332&rnid=13727922011"
    crawler(url)
    render template: 'sports_alexa_skills'
  end

  def travel_and_transportation_alexa_skills
    url = "https://www.amazon.com/s/ref=lp_13727921011_nr_n_18?fst=as%3Aoff&rh=n%3A13727921011%2Cn%3A%2113727922011%2Cn%3A14284874011&bbn=13727922011&ie=UTF8&qid=1502387332&rnid=13727922011"
    crawler(url)
    render template: 'travel_and_transportation_alexa_skills'
  end

  def utilities_alexa_skills
    url = "https://www.amazon.com/s/ref=lp_13727921011_nr_n_19?fst=as%3Aoff&rh=n%3A13727921011%2Cn%3A%2113727922011%2Cn%3A14284882011&bbn=13727922011&ie=UTF8&qid=1502387332&rnid=13727922011"
    crawler(url)
    render template: 'utilities_alexa_skills'
  end

  def weather_alexa_skills
    url = "https://www.amazon.com/s/ref=lp_13727921011_nr_n_20?fst=as%3Aoff&rh=n%3A13727921011%2Cn%3A%2113727922011%2Cn%3A14284889011&bbn=13727922011&ie=UTF8&qid=1502387332&rnid=13727922011"
    crawler(url)
    render template: 'weather_alexa_skills'
  end
end
