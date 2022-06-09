Rails.application.routes.draw do
  get "pages/home"
  get "pages/terms"
  root "pages#home"

  # Devise
  devise_for :users, controllers: { registrations: "registrations" },
                     path: "", path_names: { sign_in: "inicia-sesion", sign_out: "logout", sign_up: "registrate" }
end
