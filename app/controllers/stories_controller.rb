class StoriesController < ApplicationController
  def new
    @story=Stories.new
  end

  def delete

  end

  def show
    @story=Story.find(params[:id])
  end

  def index
    @stories=Story.order('created_at DESC').all
  end

  def create
    @story = Story.new(post_params)
  
    if @story.save
      redirect_to stories_path
    else
      render :new
    end
  end

  private

  def post_params
    params.require(:story).permit(:title, :date, :url)
  end

end
