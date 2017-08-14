Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root 'application#index'
  get 'application/business_and_finance_alexa_skills'
  get 'application/connected_car_alexa_skills'
  get 'application/education_and_reference_alexa_skills'
  get 'application/food_and_drink_alexa_skills'
  get 'application/games_trivia_and_accessories_alexa_skills'
  get 'application/lifestyle_alexa_skills'
  get 'application/local_alexa_skills'
  get 'application/movies_and_tv_alexa_skills'
  get 'application/music_and_audio_alexa_skills'
  get 'application/news_alexa_skills'
  get 'application/novelty_and_humor_alexa_skills'
  get 'application/productivity_alexa_skills'
  get 'application/shopping_alexa_skills'
  get 'application/smart_home_alexa_skills'
  get 'application/social_alexa_skills'
  get 'application/sports_alexa_skills'
  get 'application/travel_and_transportation_alexa_skills'
  get 'application/utilities_alexa_skills'
  get 'application/weather_alexa_skills'
end
