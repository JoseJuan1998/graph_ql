defmodule IntroGraphQlWeb.Schema.Context.Blog.Types do
  use Absinthe.Schema.Notation

  object :post do
    field :id, :id
    field :name, :string
    field :description, :string
  end

  input_object :post_input do
    field :name, :string
    field :description, :string
  end
end
