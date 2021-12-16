Rails.application.routes.draw do
  resources :porfolios, excpet: [:show]
  get 'porfolio/id', to: 'porfolio#show', as: 'porfolio_show'

  get 'about-me', to: 'pages#about'
  get 'contact', to: 'pages#contact'

  resources :blogs
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  root to: 'pages#home'

end
