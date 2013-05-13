class PagesController < ApplicationController

  # GET /contents
  # GET /contents.json
  def index
    if params[:tag]
      @contents = Content.tagged_with(params[:tag]).order('favorites').reverse
    else
      # @contents = Content.all
      @contents = Content.order('favorites').reverse.limit(24)
    end

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @contents }
    end
  end

  def aboutus
  end

end