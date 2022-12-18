Rails.application.routes.draw do
  root to: "reservations#new"

  resources :reservations do
    collection do
      post :confirm
    end
  end
end
