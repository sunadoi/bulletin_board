class TopicsController < ApplicationController
  def index
    @topics = Topic.all
  end

  def new
    @topic = Topic.new
    @topic.responses.new
  end

  def create
    @topic = Topic.new(topic_params)
    if @topic.save
      redirect_to action: :index
    else
      render action: :new
    end
  end

  def show
    @topic = Topic.find(params[:id])
    @response = Response.new
  end

  private

  def topic_params
    params.require(:topic).permit(:title, responses_attributes: [:content, :user_id]).merge(user_id: current_user.id)
  end
end
