defmodule IntroGraphQl.Repo.Migrations.CreatePost do
  use Ecto.Migration

  def change do
    create table(:post) do
      add :name, :string
      add :description, :string

      timestamps()
    end
  end
end
