class ChaptersController < ApplicationController
  def index

  end

  def new
    @chapter=Chapter.new
  end

  def show
    @chapter = Chapter.find(params[:id])
  end
end
