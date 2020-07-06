Rails.application.routes.draw do
  root to: 'static#home'
  get 'contact', to: 'static#contact'

  namespace :api do
    namespace :v1 do
      resource :me, only: %i[show], controller: 'me'
      resource :jobs, only: %i[index show], param: :slug
    end
  end

  resources :articles, only: %i[show index], param: :slug
  resources :projects, only: %i[show index], param: :slug

  namespace :private do
    resources :articles, except: %i[show index], param: :slug
    resources :projects, except: %i[show index], param: :slug
  end
end
