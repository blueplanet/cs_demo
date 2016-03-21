class RepliesController < ApplicationController
  def create
    topic = Topic.find params[:topic_id]
    topic.replies.create params.require(:reply).permit(:content).merge(user_id: current_user.id)

    redirect_to topic
  end
end
