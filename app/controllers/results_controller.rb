class ResultsController < ApplicationController
  def index
    redirect_to result_path(@result)
  end
  def create
  end
  def show
    @result = Result.find(params[:id])
  end
end
