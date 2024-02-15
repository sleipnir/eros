IEx.configure(
  colors: [
    syntax_colors: [
      number: :magenta,
      atom: :cyan,
      string: :green,
      boolean: :magenta,
      nil: :red
    ],
    eval_result: [:green, :bright],
    eval_error: [[:red, :bright, "✘ \n"]],
    eval_info: [:yellow, :bright],
    eval_warning: [:yellow, :bright, "💩"]
  ],

  # This will display when we enter multi lines of code. I used 4 empty spaces.
  # If you need you can update it with the unicode symbols you like
  continuation_prompt: "    ",
  default_prompt:
    [
      # ANSI CHA, move cursor to column 1
      "\e[G",
      # This is default prefix like iex
      # "%prefix",
      # custom symbols if you need play with them
      # "i👽x", "❯", ">",
      :yellow,
      # counter which helps us to reuse the previous results using v(counter)
      "%counter. ",
      :magenta,
      # custome elixir symbol; I used "". You can update at the beginnning of
      # this config
      elixir_icon,
      # this will reset previous color
      :reset
    ]
    |> IO.ANSI.format()
    |> IO.chardata_to_string()
)
