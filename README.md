# Pane
Paginated data viewer for IEx. Useful for inspecting large collections and
deeply nested structs.


## Installation

Add pigeon as a `mix.exs` dependency:
```elixir
def deps do
  [{:pane, "~> 0.1.0"}]
end
```

## Usage

    iex> data =  File.read!("mix.exs") # Or some other really long string
    iex> Pane.console(data)

![console](/docs/console.png)

## Available Commands
* `j` - Next page
* `k` - Previous page
* `q` - Quit
