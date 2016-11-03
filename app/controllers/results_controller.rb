class ResultsController < ApplicationController
  def index
  end
  def create
  end
  def show
    @result = Result.find(params[:id])
  end
end
