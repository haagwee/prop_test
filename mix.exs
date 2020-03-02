defmodule FizzBuzz.MixProject do
  use Mix.Project

  def project do
    [
      app: :fizz_buzz,
      version: "0.1.0",
      elixir: "~> 1.9",
      start_permanent: Mix.env() == :prod,
      deps: deps()
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
      {:triq, "~> 1.3"},
      {:excheck, "~> 0.6", only: :test}
    ]
  end
end
