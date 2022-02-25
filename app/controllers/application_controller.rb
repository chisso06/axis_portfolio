class ApplicationController < ActionController::Base
  before_action :basic_auth
  http_basic_authenticate_with name: "fugu", password: "hamag748"
end
