class ApplicationController < ActionController::Base
  protect_from_forgery
  include SessionsHelper # makes SessionsHelper accessible inside all controllers
end
