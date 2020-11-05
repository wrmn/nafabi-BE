Rails.application.routes.draw do
#  namespace :api do
    #namespace :v1 do
      #get 'tokens/create'
    #end
  #end
  namespace :api, defauls: { format: :json } do
    namespace :v1 do
      resources :users, only: %i[show create update destroy]
      resources :tokens, only: [:create]
    end
  end
end
