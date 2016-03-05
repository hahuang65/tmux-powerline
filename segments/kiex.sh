# Prints the version of Elixir

run_segment() {
  if [ -n "$ELIXIR_VERSION" ]; then
    echo "elixir-$ELIXIR_VERSION"
  fi

  return 0
}
