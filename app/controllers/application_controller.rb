class ApplicationController < ActionController::Base
  def default_url_options
    { host: ENV["www.mister-cocktail-rnadal.herokuapp.com"] || "localhost:3000" }
  end
end
