Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :authors do
        resources :books
      end

      resource :auth, only: [:create]
    end
  end
end
