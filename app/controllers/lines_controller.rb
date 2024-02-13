class LinesController < ApplicationController
  before_action :authenticate_user!, except: :index

  def index
    @lines = Line.all
    authorize @lines
  end
end
