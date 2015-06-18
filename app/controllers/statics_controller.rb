class StaticsController < ApplicationController
  load_permissions_and_authorize_resource class: :false

  def index
  end
end
