defmodule IntroGraphQlWeb.Schema do
  use Absinthe.Schema
  alias IntroGraphQlWeb.Resolvers.Blog

  import_types(IntroGraphQlWeb.Schema.Context.Blog.Types)

  query do
    field :get_post_by_id, :post do
      arg(:id, non_null(:id))
      resolve(&Blog.get_post_by_id/3)
    end

    field :list_posts, list_of(:post) do
      resolve(&Blog.list_posts/3)
    end
  end

  mutation do
    field :create_post, :post do
      arg(:input, :post_input)
      resolve(&Blog.create_post/3)
    end
  end


end
