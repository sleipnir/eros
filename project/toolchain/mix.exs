defmodule Toolchain.MixProject do
  use Mix.Project

  @vsn "0.1.0"

  def project do
    [
      apps_path: "apps",
      version: @vsn,
      start_permanent: Mix.env() == :prod,
      deps: deps()
    ]
  end

  defp deps do
    []
  end
end
