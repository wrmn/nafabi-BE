Rails.application.routes.draw do
  namespace :api, defauls: { format: :json } do
    namespace :v1 do
    end
  end
end
