class PagesController < ActionController::Base
	protect_from_forgery with: :exception
  layout "pages"

  def index

  end

  def raymond_depardon
  	artist = Artist.where(name: "Raymond Depardon")
    @artist = artist[0]
    @artworks = artist[0].artworks.where(on_website: true)
  end

  def benjamin_graindorge
      artist = Artist.where(name: "Benjamin Graindorge")
      @artist = artist[0]
      @artworks = artist[0].artworks.where(on_website: true)
  end

  def contact
  end
end
