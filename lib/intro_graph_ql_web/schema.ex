defmodule IntroGraphQlWeb.Schema do
  use Absinthe.Schema

  query do
    field :get_post_by_id, :post do
      arg(:id, non_null(:id))
      resolve fn _entity, %{id: id}, _context ->
        {:ok, IntroGraphQl.Blog.get_post!(id)}
      end
    end
  end

  mutation do
    field :create_post, :post do
      arg(:input, :post_input)
      resolve fn _entity, %{input: post_params}, _context ->
        IntroGraphQl.Blog.create_post(post_params)
      end
    end
  end

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
