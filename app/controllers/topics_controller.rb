class TopicsController < ApplicationController
  def index
    @topics = Topic.all.order(id: "desc")
  end

  def new
    @topic = Topic.new
    @topic.responses.new
    @topic.categories.new
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

  def search
    @topics = Topic.search(params[:keyword])
    render action: :index
  end

  private

  def topic_params
    params.require(:topic).permit(:title, responses_attributes: [:content, :user_id], categories_attributes: [:name]).merge(user_id: current_user.id)
  end
end
