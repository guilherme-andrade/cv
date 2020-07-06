Rails.application.routes.draw do
  root to: 'static#home'

  namespace :api do
    namespace :v1 do
      resource :me, only: %i[show]
      resource :jobs, only: %i[index show]
    end
  end

  resources :articles, only: %i[show index]
  resources :projects, only: %i[show index]

  namespace :private do
    resources :articles, except: %i[show index]
    resources :projects, except: %i[show index]
  end
end
