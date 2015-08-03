class ChaptersController < ApplicationController
  def index
    @chapters= Chapters.all
  end

  def new
     @chapter = Chapter.new
  end

  def create
    @chapter = Chapter.new(chapter_params)
  
    if @chapter.save
      redirect_to chapters_path
    else
      render :new
    end
  end

  def edit
    @chapter = Chapter.find(params[:id])
  end

  def update
  @chapter = chapter.find(params[:id])
  
  if @chapter.update(chapter_params)
    redirect_to chapters_path
  else
    render :edit
  end
end


  def destroy
  @chapter = Chapter.find(params[:id])
  @chapter.destroy
  redirect_to chapter_path
end

  private

  def chapter_params
    params.require(:chapter).permit(:title, :number, :url)
  end

end
end
