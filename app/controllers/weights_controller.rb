class WeightsController < ApplicationController
  before_action :set_weight, only: [:edit, :show]
  before_action :move_to_index, except: [:index, :show]
  def index
    @weights = Weight.all
    @category_bench_rankings = Weight.where(category_id: 1).order(weight: :desc).limit(5)
    @category_squat_rankings = Weight.where(category_id: 2).order(weight: :desc).limit(5)
    @category_deadlift_rankings = Weight.where(category_id: 3).order(weight: :desc).limit(5)
  end

  def new
    @weight = Weight.new
  end

  def create
    @weight = Weight.new(weight_params)
    if @weight.save
      redirect_to root_path
    else
      render :new
    end
  end
  
  
  private

  def weight_params
    params.require(:weight).permit(:weight, :category_id).merge(user_id: current_user.id)
  end

  def move_to_index
    unless user_signed_in?
      redirect_to action: :index
    end
  end

  def set_weight
    @weight = Weight.find(params[:id])
  end
end
