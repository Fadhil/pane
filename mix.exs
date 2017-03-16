defmodule Pane.Mixfile do
  use Mix.Project

  def project do
    [app: :pane,
     name: "Pane",
     description: description(),
     package: package(),
     version: "0.1.1",
     elixir: "~> 1.2",
     build_embedded: Mix.env == :prod,
     start_permanent: Mix.env == :prod,
     docs: [main: "readme",
            extras: ["README.md"]],
     deps: deps()]
  end

  def application do
    [extra_applications: [:logger]]
  end

  defp deps do
    [
      {:dogma, "~> 0.1", only: [:dev, :test]},
      {:ex_doc, "~> 0.14", only: [:dev, :test]}
    ]
  end

  defp description do
    """
    Paginated printer for IEx.
    """
  end

  defp package do
    [
       files: ["lib", "mix.exs", "README*", "LICENSE*"],
       maintainers: ["Henry Popp"],
       licenses: ["MIT"],
       links: %{"GitHub" => "https://github.com/codedge-llc/pane"}
    ]
  end
end
