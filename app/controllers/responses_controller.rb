class ResponsesController < ApplicationController
  before_action :ensure_login, only: [:create]

  def create
    @response = Response.new(response_params)
    if @response.save
      redirect_to topic_path(@response.topic.id)
    else
      redirect_to topic_path(@response.topic.id), flash: {error: '投稿内容を入力してください'}
    end
  end

  private

  def response_params
    params.require(:response).permit(:content, :topic_id).merge(user_id: current_user.id)
  end
end
