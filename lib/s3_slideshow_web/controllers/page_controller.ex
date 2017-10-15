defmodule S3SlideshowWeb.PageController do
  use S3SlideshowWeb, :controller

  alias S3Slideshow.Images

  def index(conn, _params) do
    images = Images.list
    render conn, "index.html", images: images
  end
end
