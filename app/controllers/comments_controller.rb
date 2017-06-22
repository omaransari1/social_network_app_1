class CommentsController < ApplicationController
  before_action :authenticate_user!
  
  def create
    @comment = @commentable.comments
  end

  def destroy
  end

  private
  def find_commentable
    @commentable_type = params[:commentable_type].classify
    @commentable = @commentable_type.constantize.find(params[:commentable_id])
  end
end
