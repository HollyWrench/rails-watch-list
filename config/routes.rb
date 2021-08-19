Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :lists do
    resources :bookmarks, only: [:new, :create]
  end

  resources :bookmarks, only: :destroy
  # DELETE ACTION OUTSIDE OF THE LOOP
  # bookmarks should definitely be nested - in list??
end
