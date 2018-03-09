Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'deals#index'

  post "/find", to: "deals#find"
  get "/find", to: "deals#index" #so it won't crash when there is no params on refresh
end
