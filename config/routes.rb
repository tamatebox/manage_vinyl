Rails.application.routes.draw do
  resources :vinyls do
    collection do
      get 'search'
    end
  end
end