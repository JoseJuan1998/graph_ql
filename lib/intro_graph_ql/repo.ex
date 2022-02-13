defmodule IntroGraphQl.Repo do
  use Ecto.Repo,
    otp_app: :intro_graph_ql,
    adapter: Ecto.Adapters.Postgres
end
