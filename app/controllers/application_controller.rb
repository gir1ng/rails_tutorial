class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  
  def hello
    render html: "移るかな"
  end
end
