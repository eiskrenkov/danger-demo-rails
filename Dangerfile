# frozen_string_literal: true

danger.import_dangerfile(gem: 'threat')

pr_title.run!

# FAILING A BUILD
failure "This build didn't pass tests"
failure "Ooops!", "Something bad happend"
failure ["This is example", "with array"]

# PASSING A WARNING
warn "This build didn't pass linting"
warn "Hm...", "This is not really good"
warn ["Multiple warnings", "via array"]

# DISPLAYING A MARKDOWN TABLE
markdown <<~MARKDOWN.strip
  *This is markdown table example*

  | Month    | Savings |
  | -------- | ------- |
  | January  | $250    |
  | February | $80     |
  | March    | $420    |
MARKDOWN

# ADDING AN INLINE WARNING TO A FILE
warn(
  "You shouldn't use puts in your Dangerfile",
  file: "Dangerfile",
  line: 10
)
