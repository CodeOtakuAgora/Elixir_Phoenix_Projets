defmodule Omgneering.Video do
  use Ecto.Schema
  import Ecto.Changeset

  schema "videos" do
    field :name, :string
    field :url, :string

    timestamps()
  end

  @spec changeset(
          {map, map} | %{:__struct__ => atom | %{__changeset__: map}, optional(atom) => any},
          :invalid | %{optional(:__struct__) => none, optional(atom | binary) => any}
        ) :: Ecto.Changeset.t()
  @doc false
  def changeset(video, attrs) do
    video
    |> cast(attrs, [:name, :url])
    |> validate_required([:name, :url])
  end

  def create_video_record(attrs) do
    video_changeset = changeset(%Omgneering.Video{}, attrs)
    Omgneering.Repo.insert(video_changeset)
  end
end
