class DriftsController < ApplicationController
  def index
    @drifts = Drift.all 
  end

  def show
    @drift = Drift.find(params[:id])
  end

  def new
  end

  def edit
  end
end
