class PagesController < ActionController::Base
	protect_from_forgery with: :exception

  def index

  end

  def cms
  	# @artist = Artist.where(artist.name == "CMS")
  end

  def benjamin_graindorge
  end

  def contact
  end
end
