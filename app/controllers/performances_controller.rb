class PerformancesController < ApplicationController
  before_action :authenticate_account!
  before_action :target_performance, only: %i[edit show update]

  def index
    @performances = Performance.all
  end

  def new
    @performance = Performance.new
  end

  def create
    @performance = Performance.new(performance_params)
    if @performance.save
      redirect_to performance_path(@performance)
    else
      render :new
    end
  end

  def update
    if @performance.update(performance_params)
      redirect_to performance_path(@performance)
    else
      render :edit
    end
  end

  def destroy
    Performance.destroy(params[:id])
    redirect_to performances_path
  end

  private

  def target_performance
    @performance = Performance.find(params[:id])
  end

  def performance_params
    params.require(:performance).permit(:title, :subject, :period, :status, images: [])
  end
end
