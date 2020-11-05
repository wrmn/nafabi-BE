Rails.application.routes.draw do
  namespace :api, defauls: { format: :json } do
    namespace :v1 do
      resources :users, only: %i[show create]
    end
  end
end
