Rails.application.routes.draw do
  resources :books do resources :authors_books, only: [:create, :destroy] end
  resources :authors

  root to: 'homes#welcome'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
