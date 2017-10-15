defmodule S3Slideshow.Images do
  alias ExAws.S3

  def list do
    "AWS_BUCKET"
    |> System.get_env
    |> S3.list_objects
    |> ExAws.request!
    |> get_in([:body, :contents, Access.all, :key])
    |> Enum.shuffle
  end
end
