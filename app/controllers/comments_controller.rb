class CommentsController < ApplicationController

  def create
    @trip = Trip.find(params[:trip_id])
    @comment = @trip.comments.create!(comment_params)

    respond_to do |format|
      if @comment.save
        @user = User.find(@trip.user_id)
        @comment.create_activity :create, owner: current_user, recipient: @user
        format.html { redirect_to @trip, notice: 'Comment successfully added.' }
      else
        format.html { redirect_to @trip, notice: 'Comment unsuccessful.' }
        format.json { render json: @comment.errors, status: :unprocessable_entity }
      end
    end

  end

  private

  def comment_params
    params.require(:comment).permit(:body).tap do |whitelisted|
      whitelisted[:body] = params[:comment][:body]
    end
  end
end
