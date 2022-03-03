Rails.application.routes.draw do
  resources :schedules do
    collection { post :import }
  end
   
  root "schedules#home"
  get '/home' => "schedules#home"
  get '/index' => "schedules#index"
  get '/calendar' => "schedules#calendar"
  get '/tutor_schedules' => "schedules#tutor_schedules"
  get '/total_destroy' => "schedules#total_destroy"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
