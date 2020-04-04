# frozen_string_literal: true

Rails.application.routes.draw do
  resources :turns
  resources :rounds
  resources :game_sessions

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
