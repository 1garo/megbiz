defmodule Megbiz.MixFile do
  use Mix.Project

  def project do
    [
      app: :megbiz,
      version: "0.1.0",
      elixir: "~> 1.14",
      start_permanent: Mix.env() == :prod,
      deps: deps()
    ]
  end

  # Run "mix help compile.app" to learn about applications.
  def application do
    [
      extra_applications: [:logger],
      mod: {Megbiz.Application, []}
    ]
  end

  defp aliases do
    [
      test: ["ecto.create", "ecto.migrate", "test"]
    ]
    
  end

  # Run "mix help deps" to learn about dependencies.
  defp deps do
    [
      # {:dep_from_hexpm, "~> 0.3.0"},
      # {:dep_from_git, git: "https://github.com/elixir-lang/my_dep.git", tag: "0.1.0"}
      {:plug_cowboy, "~> 2.5"},
      {:jason, "~> 1.3"},
      {:ecto_sql, "~> 3.0"},
      {:ecto, "~> 3.0"},
      {:postgrex, ">= 0.0.0"}
    ]
  end
end
