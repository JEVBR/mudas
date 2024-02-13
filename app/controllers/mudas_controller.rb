class MudasController < ApplicationController
  before_action :authenticate_user!, except: :index

  def index
    @test="testsssss"
  end
end
