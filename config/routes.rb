Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :lists
  # should movies be nested????
  resources :movies
  # bookmarks should definitely be nested - in both??
  resources :bookmarks
end
