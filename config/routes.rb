Rails.application.routes.draw do
  root "pages#home"

  # Pages
  get "/inicio", to: "pages#home"
  get "/nosotros", to: "pages#about"
  get "/contacto", to: "pages#contact"

  # Devise
  devise_for :users, controllers: { registrations: "registrations" },
                     path: "", path_names: { sign_in: "inicia-sesion", sign_out: "logout", sign_up: "registrate" }
end
