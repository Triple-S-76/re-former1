class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :require_login

  private

  def require_login
    p 'REQUIRE LOGIN HAS RUN'
  end
end
