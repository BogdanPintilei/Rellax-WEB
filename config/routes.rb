# frozen_string_literal: true

Rails.application.routes.draw do
  resources :facts
  root to: 'layouts#homepage'

  devise_for :users

  resources :tracks
  resource :facts

  namespace :api do
    namespace :v1 do
      resources :tracks, only: [:index] do
        resources :facts, only: [:index]
      end
    end
  end

  apipie
end
