# frozen_string_literal: true

Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :users do
        resources :progres_photos
        resources :categorys do
          resources :tasks do
            resources :progress_items
          end
        end
      end
    end
  end
end