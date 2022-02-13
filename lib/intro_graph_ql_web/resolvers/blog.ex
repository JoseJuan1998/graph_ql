defmodule IntroGraphQlWeb.Resolvers.Blog do
  def get_post_by_id(_entity, %{id: id}, _context) do
    {:ok, IntroGraphQl.Blog.get_post!(id)}
  end

  def list_posts(_entity, _args, _context) do
    {:ok, IntroGraphQl.Blog.list_post}
  end

  def create_post(_entity, %{input: post_params}, _context) do
    IntroGraphQl.Blog.create_post(post_params)
  end
end
