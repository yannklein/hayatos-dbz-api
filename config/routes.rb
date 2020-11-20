Rails.application.routes.draw do
  root to: "pages#home"
  namespace :api, defaults: { format: :json } do
    namespace :v1 do
      resources :characters,  only: %i[index show]
      resources :planets,     only: %i[index show]
    end
  end
end
