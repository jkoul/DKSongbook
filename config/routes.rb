Rails.application.routes.draw do
  root "songs#songbook"
  resources :songs, only: [:index]

end
