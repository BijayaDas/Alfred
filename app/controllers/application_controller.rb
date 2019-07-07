class ApplicationController < ActionController::Base
    add_flash_types :success, :error, :info, :warning, :danger
end
