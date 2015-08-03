class StoriesController < ApplicationController
  def new
    @story=Story.new
  end

  def edit
    @story = Story.find(params[:id])
  end

  def update
  @story = Story.find(params[:id])
  
  if @story.update(story_params)
    redirect_to stories_path
  else
    render :edit
  end
end

  def destroy
  @story = Story.find(params[:id])
  @Story.destroy
  redirect_to stories_path
end

  def show
    @story=Story.find(params[:id])
  end

  def index
    @stories=Story.order('created_at DESC').all
  end

  def create
    @story = Story.new(story_params)
  
    if @story.save
      redirect_to stories_path
    else
      render :new
    end
  end

  private

  def story_params
    params.require(:story).permit(:title, :Order, :url)
  end

end
