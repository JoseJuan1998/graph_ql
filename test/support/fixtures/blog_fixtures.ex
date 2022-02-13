defmodule IntroGraphQl.BlogFixtures do
  @moduledoc """
  This module defines test helpers for creating
  entities via the `IntroGraphQl.Blog` context.
  """

  @doc """
  Generate a post.
  """
  def post_fixture(attrs \\ %{}) do
    {:ok, post} =
      attrs
      |> Enum.into(%{
        description: "some description",
        name: "some name"
      })
      |> IntroGraphQl.Blog.create_post()

    post
  end
end
