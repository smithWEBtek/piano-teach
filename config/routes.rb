Rails.application.routes.draw do

  resources :excersizes
  resources :lessons
  resources :tracks
  resources :charts
  resources :mp3s
end
