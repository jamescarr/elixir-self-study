defmodule RabbitmqTutorials.Mixfile do
  use Mix.Project

  def project do
    [app: :rabbitmq_tutorials,
     version: "0.0.1",
     elixir: "~> 1.2",
     build_embedded: Mix.env == :prod,
     start_permanent: Mix.env == :prod,
     deps: deps]
  end

  def application do
    [
      applications: [:logger, :amqp]
    ]
  end

  defp deps do
    [{:amqp, "~> 0.1.4"}]
  end
end
