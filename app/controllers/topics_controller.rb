class TopicsController < ApplicationController
  before_action :ensure_login, only: [:new, :create]


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
      category_ids = params[:topic][:categories].map{|i| i.to_i}
      category_ids.each do |id|
        @topics_categories = TopicsCategory.create(topic_id: @topic.id, category_id: id)
      end
      redirect_to action: :index
    else
      flash.now[:alert] = '必須事項を入力してください。'
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
    params.require(:topic).permit(:title, responses_attributes: [:content, :user_id]).merge(user_id: current_user.id)
  end
end
