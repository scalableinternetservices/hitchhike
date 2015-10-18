class CommentsController < ApplicationController
  def create
    @trip = Trip.find(params[:trip_id])
    @comment = @trip.comments.create!(comment_params)
    redirect_to @trip
  end

  private

  def comment_params
    params.require(:comment).permit(:body).tap do |whitelisted|
      whitelisted[:body] = params[:comment][:body]
    end
  end
end
