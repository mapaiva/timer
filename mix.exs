defmodule Timer.MixProject do
  use Mix.Project

  @version "0.1.0"
  @source_url "https://github.com/mapaiva/timer"

  def project do
    [
      app: :timer,
      version: @version,
      elixir: "~> 1.9",
      start_permanent: Mix.env() == :prod,
      name: "Timer",
      description: "A simple time handling module",
      source_url: @source_url,
      package: package(),
      docs: docs(),
      deps: deps()
    ]
  end

  def application do
    [
      extra_applications: [:logger]
    ]
  end

  defp deps do
    [
      {:ex_doc, "~> 0.21", only: :dev, runtime: false}
    ]
  end

  defp package do
    [
      licenses: ["MIT"],
      links: %{
        GitHub: @source_url
      }
    ]
  end

  defp docs do
    [
      main: "readme",
      source_ref: @version,
      source_url: @source_url,
      extras: ["README.md"]
    ]
  end
end
