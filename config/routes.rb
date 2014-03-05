Adminsimple::Engine.routes.draw do

  # Dashboard route
  root to: 'adminsimple/dashboard#index'

  # Styleguide route
  get 'styleguide(/:view)' => 'adminsimple/styleguide#show', as: :styleguide

end
