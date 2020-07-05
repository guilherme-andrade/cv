Rails.application.routes.draw do
  root to: 'static#home'

  namespace :api do
    namespace :v1 do
      resource :me, only: %i[show]
      resource :jobs, only: %i[index show]
    end
  end

  namespace :private do
    resources :articles, only: %i[new create edit update destrou]
  end
end
