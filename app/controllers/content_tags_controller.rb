class ContentTagsController < ApplicationController
  # GET /content_tags
  # GET /content_tags.json
  def index
    @content_tags = ContentTag.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @content_tags }
    end
  end

  # GET /content_tags/1
  # GET /content_tags/1.json
  def show
    @content_tag = ContentTag.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @content_tag }
    end
  end

  # GET /content_tags/new
  # GET /content_tags/new.json
  def new
    @content_tag = ContentTag.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @content_tag }
    end
  end

  # GET /content_tags/1/edit
  def edit
    @content_tag = ContentTag.find(params[:id])
  end

  # POST /content_tags
  # POST /content_tags.json
  def create
    @content_tag = ContentTag.new(params[:content_tag])

    respond_to do |format|
      if @content_tag.save
        format.html { redirect_to @content_tag, notice: 'Content tag was successfully created.' }
        format.json { render json: @content_tag, status: :created, location: @content_tag }
      else
        format.html { render action: "new" }
        format.json { render json: @content_tag.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /content_tags/1
  # PUT /content_tags/1.json
  def update
    @content_tag = ContentTag.find(params[:id])

    respond_to do |format|
      if @content_tag.update_attributes(params[:content_tag])
        format.html { redirect_to @content_tag, notice: 'Content tag was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @content_tag.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /content_tags/1
  # DELETE /content_tags/1.json
  def destroy
    @content_tag = ContentTag.find(params[:id])
    @content_tag.destroy

    respond_to do |format|
      format.html { redirect_to content_tags_url }
      format.json { head :no_content }
    end
  end
end
