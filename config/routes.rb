Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  #read all
  get "/articles", to: "articles#index"
  #new article
  get "/articles/new", to: "articles#new", as: :new_article
  post "/articles", to: "articles#create"
  #show one
  get "/articles/:id", to: "articles#show", as: :article
  #edit
  get "/articles/:id/edit", to: "articles#edit", as: :edit_article
  patch "/articles/:id", to: "articles#update"
  #destroy
  delete "/articles/:id", to: "articles#destroy"
  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Defines the root path route ("/")
  # root "posts#index"
end
