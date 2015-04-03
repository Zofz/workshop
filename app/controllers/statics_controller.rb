class StaticsController < ApplicationController

  def index
    authorize! :read, :statics
  end
end
