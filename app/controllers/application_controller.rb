class ApplicationController < ActionController::Base
  protect_from_forgery

  before_filter do
    params[:game] = GAME
  end
end
