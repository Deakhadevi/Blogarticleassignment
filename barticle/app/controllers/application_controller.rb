class ApplicationController < ActionController::Base
  def landingpage
    render html: "Welcome to Blog Article Page"
  end
end
