Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get "/oceans" => "oceans#index"
  get "/oceans/:id" => "oceans#show"
  post "/oceans" => "oceans#create"
  patch "/oceans/:id" => "oceans#update"
  delete "/oceans/:id" => "oceans#destroy"
end
