Rails.application.routes.draw do
  get "pages/home"
  get "pages/terms"
  devise_for :users
  root "pages#home"
end
