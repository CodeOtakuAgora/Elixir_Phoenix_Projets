defmodule Omgneering.Repo.Migrations.CreateVideos do
  use Ecto.Migration

  def change do
    create table(:videos) do
      add :name, :string
      add :url, :string

      timestamps()
    end

  end
end
