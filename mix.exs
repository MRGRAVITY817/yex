defmodule Yex.MixProject do
  use Mix.Project

  @version "0.0.1"
  @repo_url "https://github.com/MRGRAVITY817/yex"

  def project do
    [
      app: :yex,
      version: @version,
      elixir: "~> 1.15",
      start_permanent: Mix.env() == :prod,
      deps: deps(),
      docs: docs(),
      package: package(),
      description: description()
    ]
  end

  # Run "mix help compile.app" to learn about applications.
  def application do
    [
      extra_applications: [:logger]
    ]
  end

  # Run "mix help deps" to learn about dependencies.
  defp deps do
    [
      {:rustler, "~> 0.32.1"},
      {:ex_doc, "~> 0.31", only: :dev, runtime: false},
      {:earmark, "~> 1.4", only: :dev, runtime: false}
    ]
  end

  defp docs do
    [
      main: "Yex",
      extras: ["CHANGELOG.md"],
      skip_undefined_reference_warnings_on: ["CHANGELOG.md"],
      source_ref: "v#{@version}",
      source_url: @repo_url
    ]
  end

  defp description do
    """
    `yex` is a Elixir port of `yrs`, a Rust library that has tools for making CRDTs easier to work with.
    It's a work in progress and not ready for production use yet!.
    """
  end

  defp package do
    [
      files: [
        "lib",
        "native",
        "mix.exs",
        "README.md",
        "CHANGELOG.md"
      ],
      maintainers: ["Hoon Wee"],
      licenses: ["MIT"],
      links: %{"GitHub" => @repo_url}
    ]
  end
end
