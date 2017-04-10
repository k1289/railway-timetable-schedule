Rails.application.routes.draw do
  resources :passengers
  resources :schedules
  resources :runschedules
  resources :trainruns
  resources :spltrains
  resources :tickets
  resources :stations
  resources :trains
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
