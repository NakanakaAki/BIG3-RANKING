class RankingsController < ApplicationController
  def index
    @weight = Weight.all
    @rankings = @weight.rankings.order('score DESC')
  end

  private

  def weight_params
    params.require(:weight).permit(:weight, :category_id).merge(user_id: current_user.id)
  end


end
