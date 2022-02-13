defmodule IntroGraphQl.Blog.Post do
  use Ecto.Schema
  import Ecto.Changeset

  schema "post" do
    field :description, :string
    field :name, :string

    timestamps()
  end

  @doc false
  def changeset(post, attrs) do
    post
    |> cast(attrs, [:name, :description])
    |> validate_required([:name, :description])
  end
end
