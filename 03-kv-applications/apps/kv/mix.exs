defmodule KV.Mixfile do
  use Mix.Project

  def project do
    [app: :kv,
     version: "0.0.1",
     elixir: "~> 1.2",
     build_embedded: Mix.env == :prod,
     start_permanent: Mix.env == :prod,
     build_path: "../../_build",
     config_path: "../../config/config.exs",
     deps_path: "../../deps",
     lockfile: "../../mix.lock",
     deps: deps]
  end

  def application do
    [applications: [:logger],
     mod: {KV, []}]
  end

  defp deps do
    [
      {:mix_test_watch, "~> 0.2", only: :dev}
    ]
  end
end
