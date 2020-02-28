class ResponsesController < ApplicationController
  before_action :ensure_login, only: [:create]

  def create
    @response = Response.create(response_params)
    redirect_to topic_path(@response.topic.id)
  end

  private

  def response_params
    params.require(:response).permit(:content, :topic_id).merge(user_id: current_user.id)
  end
end
