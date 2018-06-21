Rails.application.routes.draw do
  resources :beta
  resources :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  # get '/user/get_demo', to: 'users#get_demo', as: :demo_user
  # get '/user/get_params/:val', to: 'users#get_demo2', as: :get_params

  get '/songs/three-songs', to: 'songs#get_three_songs', as: :get_three_songs
  get '/songs/three-songs-json', to: 'songs#get_three_songs_json', as: :get_three_songs_json

end
