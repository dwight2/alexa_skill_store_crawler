class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  require 'mechanize'
  require 'open-uri'
  require 'nokogiri'

  def index
    @skills = Skill.all.paginate(page: params[:page], per_page: 100)
    render template: 'home'
  end

  def dev_list
    @developers = Developer.all.order(number_of_skills: :desc)
    render template: 'dev_list'
  end

  def business_and_finance_alexa_skills
    @skills = Skill.where(category: 'Business & Finance').paginate(page: params[:page], per_page: 50)
    render template: 'alexa_skills'
  end

  def connected_car_alexa_skills
    @skills = Skill.where(:category => 'Connected Car').paginate(page: params[:page], per_page: 50)
    render template: 'alexa_skills'
  end

  def education_and_reference_alexa_skills
    @skills = Skill.where(:category => 'Education & Reference').paginate(page: params[:page], per_page: 50)
    render template: 'alexa_skills'
  end

  def food_and_drink_alexa_skills
    @skills = Skill.where(:category => 'Food & Drink').paginate(page: params[:page], per_page: 50)
    render template: 'alexa_skills'
  end

  def games_trivia_and_accessories_alexa_skills
    @skills = Skill.where(:category => 'Games, Trivia & Accessories').paginate(page: params[:page], per_page: 50)
    render template: 'alexa_skills'
  end

  def lifestyle_alexa_skills
    @skills = Skill.where(:category => 'Lifestyle').paginate(page: params[:page], per_page: 50)
    render template: 'alexa_skills'
  end

  def local_alexa_skills
    @skills = Skill.where(:category => 'Local').paginate(page: params[:page], per_page: 50)
    render template: 'alexa_skills'
  end

  def movies_and_tv_alexa_skills
    @skills = Skill.where(:category => 'Movies & TV').paginate(page: params[:page], per_page: 50)
    render template: 'alexa_skills'
  end

  def music_and_audio_alexa_skills
    @skills = Skill.where(:category => 'Music & Audio').paginate(page: params[:page], per_page: 50)
    render template: 'alexa_skills'
  end

  def news_alexa_skills
    @skills = Skill.where(:category => 'News').paginate(page: params[:page], per_page: 50)
    render template: 'alexa_skills'
  end

  def novelty_and_humor_alexa_skills
    @skills = Skill.where(:category => 'Novelty & Humor').paginate(page: params[:page], per_page: 50)
    render template: 'alexa_skills'
  end

  def productivity_alexa_skills
    @skills = Skill.where(:category => 'Productivity').paginate(page: params[:page], per_page: 50)
    render template: 'alexa_skills'
  end

  def shopping_alexa_skills
    @skills = Skill.where(:category => 'Shopping').paginate(page: params[:page], per_page: 50)
    render template: 'alexa_skills'
  end

  def smart_home_alexa_skills
    @skills = Skill.where(:category => 'Smart Home').paginate(page: params[:page], per_page: 50)
    render template: 'alexa_skills'
  end

  def social_alexa_skills
    @skills = Skill.where(:category => 'Social').paginate(page: params[:page], per_page: 50)
    render template: 'alexa_skills'
  end

  def sports_alexa_skills
    @skills = Skill.where(:category => 'Sports').paginate(page: params[:page], per_page: 50)
    render template: 'alexa_skills'
  end

  def travel_and_transportation_alexa_skills
    @skills = Skill.where(:category => 'Travel & Transportation').paginate(page: params[:page], per_page: 50)
    render template: 'alexa_skills'
  end

  def utilities_alexa_skills
    @skills = Skill.where(:category => 'Utilities').paginate(page: params[:page], per_page: 50)
    render template: 'alexa_skills'
  end

  def weather_alexa_skills
    @skills = Skill.where(:category => 'Weather').paginate(page: params[:page], per_page: 50)
    render template: 'alexa_skills'
  end
end
