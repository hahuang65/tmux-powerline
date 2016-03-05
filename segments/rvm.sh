# Prints the version of Ruby

run_segment() {
  if [ -n "$RUBY_VERSION" ]; then
    echo "$RUBY_VERSION"
  fi

  return 0
}
