class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  require 'mechanize'
  require 'open-uri'
  require 'nokogiri'

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

  def communication_alexa_skills
    url = "https://www.amazon.com/s/ref=sr_pg_1?rh=n%3A13727921011%2Cn%3A%2113727922011%2Cn%3A14284864011%2Cn%3A14284865011&ie=UTF8&qid=1502376692&ajr=2"
    agent = Mechanize.new
    agent.history_added = Proc.new { sleep 0.5 }
    page = agent.get(url)
    # page = Nokogiri::HTML(open(url, 'User-Agent' => 'Chrome/41.0.2228.0'))
    loop do
      skills = page.parser.css('.s-item-container')
      @skillsArray = []
      skills.each do |skill|
        name = skill.css('h2').text
        dev = skill.css('.a-row.a-spacing-none>span').text
        desc = skill.css('.a-unordered-list>span').text
        @skillsArray << Skill.new(name, dev, desc)
      end
      if link = page.link_with(:text => "Next Page")
        page = link.click
      else
        break
      end
    end
    render template: 'communication_alexa_skills'
  end

  def connected_car_alexa_skills
    url = "https://www.amazon.com/s/ref=sr_pg_1?rh=n%3A13727921011%2Cn%3A%2113727922011%2Cn%3A14284820011&ie=UTF8&qid=1502312618&ajr=0"
    agent = Mechanize.new
    agent.history_added = Proc.new { sleep 0.5 }
    page = agent.get(url)
    loop do
      skills = page.parser.css('.s-item-container')
      @skillsArray = []
      skills.each do |skill|
        name = skill.css('h2').text
        dev = skill.css('.a-row.a-spacing-none>span').text
        desc = skill.css('.a-unordered-list>span').text
        @skillsArray << Skill.new(name, dev, desc)
      end
      if link = page.link_with(:text => "Next Page")
        page = link.click
      else
        break
      end
    end
    render template: 'connected_car_alexa_skills'
  end
end
