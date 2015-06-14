class StaticsController < ApplicationController
  load_permissions_and_authorize_resource class: :false

  def index
    authorize! :read, :statics
  end
end
