defmodule ExLiveWindow.MixProject do
  use Mix.Project

  def project do
    [
      app: :ex_live_window,
      description: description(),
      version: "0.1.0",
      elixir: "~> 1.14",
      start_permanent: Mix.env() == :prod,
      package: package(),
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
      {:ex_doc, ">= 0.0.0", only: :dev, runtime: false}
    ]
  end

  defp description do
    "Render virtualized data structures efficiently in live views via windowing."
  end

  defp package do
    [
      licenses: ["MIT"],
      links: %{"GitHub" => "https://github.com/AHBruns/ex_live_window"}
    ]
  end
end
