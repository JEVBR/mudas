class LinesController < ApplicationController
  before_action :authenticate_user!, except: :index

  def index
    @lines = Line.all.order(sequence: :asc)
    authorize @lines
  end
end
