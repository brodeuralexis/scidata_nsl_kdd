defmodule Scidata.NSLKDD.MixProject do
  use Mix.Project

  def project do
    [
      app: :scidata_nsl_kdd,
      version: "0.1.1",
      source_url: "https://github.com/brodeuralexis/scidata_nsl_kdd",
      homepage_url: "https://github.com/brodeuralexis/scidata_nsl_kdd",
      elixir: "~> 1.13",
      start_permanent: Mix.env() == :prod,
      deps: deps(),
      package: package(),
      description: description(),
    ]
  end

  # Run "mix help compile.app" to learn about applications.
  def application do
    [
      extra_applications: []
    ]
  end

  # Run "mix help deps" to learn about dependencies.
  defp deps do
    [
      # {:dep_from_hexpm, "~> 0.3.0"},
      # {:dep_from_git, git: "https://github.com/elixir-lang/my_dep.git", tag: "0.1.0"}
      {:scidata, "~> 0.1.5"},
      {:ex_doc, ">= 0.0.0", only: :dev, runtime: false}
    ]
  end

  defp description() do
    "Adds support for the NSL-KDD dataset to Scidata."
  end

  defp package do
    [
      name: "scidata_nsl_kdd",
      files: ~w(lib .formatter.exs mix.exs README* LICENSE*),
      licenses: ["Apache-2.0"],
      links: %{"GitHub" => "https://github.com/brodeuralexis/scidata_nsl_kdd"},
    ]
  end
end
