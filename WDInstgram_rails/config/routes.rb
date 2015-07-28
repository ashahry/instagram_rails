Rails.application.routes.draw do
  get "/" => "entries#index"
  get "/entries/new" => "enteries#new"
  post "/entries" => "entries#create"
  get "entries/:id/edit" => "entries#edit"
  put "entries/:id" => "entries#update"
  get "entries/:id" => "entries#show"
  delete "entries/:id" => "entries#destroy"
end
