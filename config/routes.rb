Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  root "pages#home"

  # Pages
  get "/inicio", to: "pages#home"
  get "/nosotros", to: "pages#about"
  get "/contacto", to: "pages#contact"

  # Devise
  devise_for :users, controllers: { registrations: "registrations" },
                     path: "", path_names: { sign_in: "inicia-sesion", sign_out: "logout", sign_up: "registrate" }
end
