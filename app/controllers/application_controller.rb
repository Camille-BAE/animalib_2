class ApplicationController < ActionController::Base
  devise_group :user, contains: [:client, :doctor]

end
