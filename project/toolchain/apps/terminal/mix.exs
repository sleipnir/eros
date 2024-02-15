defmodule Terminal.MixProject do
  use Mix.Project

  @app :terminal
  @vsn "0.1.0"

  def project do
    [
      app: @app,
      version: @vsn,
      build_path: "../../_build",
      config_path: "../../config/config.exs",
      deps_path: "../../deps",
      lockfile: "../../mix.lock",
      elixir: "~> 1.14",
      start_permanent: Mix.env() == :prod,
      deps: deps()
    ]
  end

  def application do
    [
      extra_applications: [:logger],
      mod: {Terminal.Application, []}
    ]
  end

  defp deps do
    []
  end
end
