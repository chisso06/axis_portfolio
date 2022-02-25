class ApplicationController < ActionController::Base
  http_basic_authenticate_with name: "fugu", password: "hamag748"
end
