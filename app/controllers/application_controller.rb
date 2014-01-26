class ApplicationController < ActionController::Base
  protect_from_forgery
  def default_url_options
    if Rails.env.production?
      {:host => "http://www.mercari.herokuapp.com"}
    else  
      {}
    end
  end
end
