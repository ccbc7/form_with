Rails.application.routes.draw do
  get 'r/index'
  root to: "reservations#new"

  resources :reservations do
    # member do
    #   post 'confirm'
    # end
    collection do
      post 'confirm'
    end
  end
end
