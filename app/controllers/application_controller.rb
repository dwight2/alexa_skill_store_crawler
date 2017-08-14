class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  require 'mechanize'
  require 'open-uri'
  require 'nokogiri'

  def index
    render template: 'home'
  end

  def business_and_finance_alexa_skills
    @skills = Skill.where(category: 'Business & Finance')
    render template: 'alexa_skills'
  end

  def communication_alexa_skills
    @skills = Skill.where(category: 'Communication')
    render template: 'alexa_skills'
  end

  def connected_car_alexa_skills
    @skills = Skill.where(:category => 'Connected Car')
    render template: 'alexa_skills'
  end

  def education_and_reference_alexa_skills
    @skills = Skill.where(:category => 'Education & Reference')
    render template: 'alexa_skills'
  end

  def food_and_drink_alexa_skills
    @skills = Skill.where(:category => 'Food & Drink')
    render template: 'alexa_skills'
  end

  def games_trivia_and_accessories_alexa_skills
    @skills = Skill.where(:category => 'Games, Trivia & Accessories')
    render template: 'alexa_skills'
  end

  def health_and_fitness_alexa_skills
    @skills = Skill.where(:category => 'Health & Fitness')
    render template: 'alexa_skills'
  end

  def lifestyle_alexa_skills
    @skills = Skill.where(:category => 'Lifestyle')
    render template: 'alexa_skills'
  end

  def local_alexa_skills
    @skills = Skill.where(:category => 'Local')
    render template: 'alexa_skills'
  end

  def movies_and_tv_alexa_skills
    @skills = Skill.where(:category => 'Movies & TV')
    render template: 'alexa_skills'
  end

  def music_and_audio_alexa_skills
    @skills = Skill.where(:category => 'Music & Audio')
    render template: 'alexa_skills'
  end

  def news_alexa_skills
    @skills = Skill.where(:category => 'News')
    render template: 'alexa_skills'
  end

  def novelty_and_humor_alexa_skills
    @skills = Skill.where(:category => 'Novelty & Humor')
    render template: 'alexa_skills'
  end

  def productivity_alexa_skills
    @skills = Skill.where(:category => 'Productivity')
    render template: 'alexa_skills'
  end

  def shopping_alexa_skills
    @skills = Skill.where(:category => 'Shopping')
    render template: 'alexa_skills'
  end

  def smart_home_alexa_skills
    @skills = Skill.where(:category => 'Smart Home')
    render template: 'alexa_skills'
  end

  def social_alexa_skills
    @skills = Skill.where(:category => 'Social')
    render template: 'alexa_skills'
  end

  def sports_alexa_skills
    @skills = Skill.where(:category => 'Sports')
    render template: 'alexa_skills'
  end

  def travel_and_transportation_alexa_skills
    @skills = Skill.where(:category => 'Travel & Transportation')
    render template: 'alexa_skills'
  end

  def utilities_alexa_skills
    @skills = Skill.where(:category => 'Utilities')
    render template: 'alexa_skills'
  end

  def weather_alexa_skills
    @skills = Skill.where(:category => 'Weather')
    render template: 'alexa_skills'
  end
end
