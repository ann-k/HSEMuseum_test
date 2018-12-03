class RemoveImageFromArtworksController < ApplicationController
  before_action :set_remove_image_from_artwork, only: [:show, :edit, :update, :destroy]

  # GET /remove_image_from_artworks
  # GET /remove_image_from_artworks.json
  def index
    @remove_image_from_artworks = RemoveImageFromArtwork.all
  end

  # GET /remove_image_from_artworks/1
  # GET /remove_image_from_artworks/1.json
  def show
  end

  # GET /remove_image_from_artworks/new
  def new
    @remove_image_from_artwork = RemoveImageFromArtwork.new
  end

  # GET /remove_image_from_artworks/1/edit
  def edit
  end

  # POST /remove_image_from_artworks
  # POST /remove_image_from_artworks.json
  def create
    @remove_image_from_artwork = RemoveImageFromArtwork.new(remove_image_from_artwork_params)

    respond_to do |format|
      if @remove_image_from_artwork.save
        format.html { redirect_to @remove_image_from_artwork, notice: 'Remove image from artwork was successfully created.' }
        format.json { render :show, status: :created, location: @remove_image_from_artwork }
      else
        format.html { render :new }
        format.json { render json: @remove_image_from_artwork.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /remove_image_from_artworks/1
  # PATCH/PUT /remove_image_from_artworks/1.json
  def update
    respond_to do |format|
      if @remove_image_from_artwork.update(remove_image_from_artwork_params)
        format.html { redirect_to @remove_image_from_artwork, notice: 'Remove image from artwork was successfully updated.' }
        format.json { render :show, status: :ok, location: @remove_image_from_artwork }
      else
        format.html { render :edit }
        format.json { render json: @remove_image_from_artwork.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /remove_image_from_artworks/1
  # DELETE /remove_image_from_artworks/1.json
  def destroy
    @remove_image_from_artwork.destroy
    respond_to do |format|
      format.html { redirect_to remove_image_from_artworks_url, notice: 'Remove image from artwork was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_remove_image_from_artwork
      @remove_image_from_artwork = RemoveImageFromArtwork.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def remove_image_from_artwork_params
      params.fetch(:remove_image_from_artwork, {})
    end
end
