Rails.application.routes.draw do
  resources :vinyls do
    collection do
      get 'search'
    end
  end
  1
get "show", to: "top#tmp"
end