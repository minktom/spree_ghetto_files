Spree::Core::Engine.routes.draw do

  namespace :admin do
    resources :downloadables
  end

end
