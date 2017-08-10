Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root 'application#index'
  get 'application/communication_alexa_skills'
  get 'application/connected_car_alexa_skills'
end
