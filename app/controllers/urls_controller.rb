class UrlsController < ApplicationController
  respond_to :html, :json
  # GET /urls
  # GET /urls.json
  def index
    @urls = Url.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @urls }
    end
  end

  # GET /urls/1
  # GET /urls/1.json
  def show
    @url = Url.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @url }
    end
  end

  # GET /urls/new
  # GET /urls/new.json
  def new
    @url = Url.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @url }
    end
  end

  def create
    @url = Url.new(params[:url])

    respond_to do |format|
       if @url.save
        format.html { redirect_to urls_path, notice: 'URL was successfully shortened.' }
        format.json { render json: urls_path, status: :created, location: @url }
      else
        format.html { render action: "new" }
        format.json { render json: @url.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /urls/1
  # PUT /urls/1.json

  # DELETE /urls/1
  # DELETE /urls/1.json
  def destroy
    @url = Url.find(params[:id])
    @url.destroy

    respond_to do |format|
      format.html { redirect_to urls_url }
      format.json { head :no_content }
    end
  end
end
