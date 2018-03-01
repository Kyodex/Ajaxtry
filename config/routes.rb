Rails.application.routes.draw do
  resources :emails

  get 'emails/index'

  get 'emails/new'

  get 'emails/destroy'

  root 'emails#index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
