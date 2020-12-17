# frozen_string_literal: true

Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      post '/login',    to: 'sessions#create'
      post '/logout',   to: 'sessions#destroy'
      get '/logged_in', to: 'sessions#is_logged_in?'
      
      resources :users do
        
        resources :categorys do
          resources :tasks do
            resources :progress_items
          end
        end
      end
    end
  end
 
end