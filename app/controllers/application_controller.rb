class ApplicationController < ActionController::Base
  before_action do
    I18n.locale = :es # Esto es para traducir todo a español
  end
end
