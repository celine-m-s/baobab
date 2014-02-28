class ArtworksController < ApplicationController
  before_action :set_artwork, only: [:show, :edit, :update, :destroy]
  before_action :set_artist, only: [:show, :edit, :update, :destroy]
  before_action :set_organization

  # GET /artworks
  # GET /artworks.json
  def index
    @artworks = Artwork.all
  end

  # GET /artworks/1
  # GET /artworks/1.json
  def show
  end

  # GET /artworks/new
  def new
    @artists_list = Artist.all.collect {|p| [ p.name, p.id ] }
    @artwork = Artwork.new
  end

  # GET /artworks/1/edit
  def edit
    @artists_list = Artist.all.collect {|p| [ p.name, p.id ] }
  end

  # POST /artworks
  # POST /artworks.json
  def create

    @artwork = Artwork.new(artwork_params)

    respond_to do |format|
      if @artwork.save
        format.html { redirect_to organization_artworks_path(@organization), notice: 'Artwork was successfully created.' }
        format.json { render action: 'show', status: :created, location: @artwork }
      else
        format.html { render action: 'new' }
        format.json { render json: @artwork.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /artworks/1
  # PATCH/PUT /artworks/1.json
  def update
    respond_to do |format|
      if @artwork.update(artwork_params)
        format.html { redirect_to organization_artworks_path(@organization), notice: 'Artwork was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @artwork.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /artworks/1
  # DELETE /artworks/1.json
  def destroy
    @artwork.destroy
    respond_to do |format|
      format.html { redirect_to artworks_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_artwork
      @artwork = Artwork.find(params[:id])
    end

    def set_artist
      @artist = Artist.find(params[:artist_id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def artwork_params
      params.require(:artwork).permit(:title, :year, :on_website, :order_status, :bibliography, :condition_report, :edition_type, :provenance, :signature, :medium, :comment, :height, :width, :depth, :estimation, :artist_id)
    end

    def set_organization
      @organization = Organization.find(params[:organization_id])
    end
end
