Mywebed::Application.routes.draw do
  resources :courses
  resources :notes
  root to: 'courses#index'
end
