class ApplicationController < ActionController::API
  # switch all defaults to not html (why isn't this part of rails-api ?)
  before_action :set_default_response_format

  protected

  def set_default_response_format
    request.format = :json
  end


end
