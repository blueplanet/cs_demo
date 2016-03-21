class TopicsController < ApplicationController
  def index
    @topics = Topic.all
  end

  def show
    @topic = Topic.find params[:id]
  end

  def new
    @topic = Topic.new
  end

  def create
    current_user.topics.create! params.require(:topic).permit(:node_id, :title, :body)
    redirect_to topics_path
  end
end
