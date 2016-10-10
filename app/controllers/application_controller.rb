class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
end

class User
  attr_accessor :name, :phone
end